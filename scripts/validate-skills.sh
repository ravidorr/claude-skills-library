#!/bin/bash

# Validate skill metadata against JSON schema
# Requires: yq (for YAML parsing)

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
SKILLS_DIR="$PROJECT_ROOT/skills"
SCHEMA="$PROJECT_ROOT/schemas/skill-metadata.schema.json"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "=================================="
echo "Skill Metadata Validation"
echo "=================================="
echo ""

# Check for yq
if ! command -v yq &> /dev/null; then
    echo -e "${YELLOW}Warning: 'yq' not installed. Install with: brew install yq${NC}"
    echo "Skipping validation..."
    exit 0
fi

errors=0
validated=0

for skill_path in "$SKILLS_DIR"/*/; do
    skill_name=$(basename "$skill_path")
    skill_file="$skill_path/SKILL.md"
    
    # Skip _shared
    if [[ "$skill_name" == "_shared" ]]; then
        continue
    fi
    
    # Check SKILL.md exists
    if [[ ! -f "$skill_file" ]]; then
        continue
    fi
    
    echo -n "Validating $skill_name... "
    
    # Extract frontmatter
    frontmatter=$(sed -n '/^---$/,/^---$/p' "$skill_file" | sed '1d;$d')
    
    # Check required fields
    name=$(echo "$frontmatter" | yq '.name' 2>/dev/null || echo "")
    version=$(echo "$frontmatter" | yq '.version' 2>/dev/null || echo "")
    description=$(echo "$frontmatter" | yq '.description' 2>/dev/null || echo "")
    
    has_error=false
    
    if [[ -z "$name" || "$name" == "null" ]]; then
        echo -e "${RED}Missing 'name'${NC}"
        has_error=true
    fi
    
    if [[ -z "$version" || "$version" == "null" ]]; then
        echo -e "${RED}Missing 'version'${NC}"
        has_error=true
    fi
    
    if [[ -z "$description" || "$description" == "null" ]]; then
        echo -e "${RED}Missing 'description'${NC}"
        has_error=true
    fi
    
    # Validate name format (kebab-case)
    if [[ -n "$name" && "$name" != "null" ]]; then
        if ! [[ "$name" =~ ^[a-z][a-z0-9]*(-[a-z0-9]+)*$ ]]; then
            echo -e "${RED}Invalid name format (use kebab-case)${NC}"
            has_error=true
        fi
    fi
    
    # Validate version format (semver)
    if [[ -n "$version" && "$version" != "null" ]]; then
        if ! [[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
            echo -e "${RED}Invalid version format (use X.Y.Z)${NC}"
            has_error=true
        fi
    fi
    
    if [[ "$has_error" == true ]]; then
        ((errors++))
    else
        echo -e "${GREEN}OK${NC}"
    fi
    
    ((validated++))
done

echo ""
echo "=================================="
echo "Validated: $validated skills"
if [[ $errors -gt 0 ]]; then
    echo -e "${RED}Errors: $errors${NC}"
    exit 1
else
    echo -e "${GREEN}All skills valid!${NC}"
fi
