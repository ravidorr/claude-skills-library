#!/bin/bash

# Build script for Claude Skills Library
# Generates .skill files (ZIP archives) from source SKILL.md and references/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
SKILLS_DIR="$PROJECT_ROOT/skills"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=================================="
echo "Claude Skills Library Build Script"
echo "=================================="
echo ""

# Check if zip is available
if ! command -v zip &> /dev/null; then
    echo -e "${RED}Error: 'zip' command not found. Please install zip.${NC}"
    exit 1
fi

# Function to build a single skill
build_skill() {
    local skill_name="$1"
    local skill_dir="$SKILLS_DIR/$skill_name"
    local skill_file="$skill_dir/$skill_name.skill"
    
    # Skip _shared folder and non-directories
    if [[ "$skill_name" == "_shared" ]] || [[ ! -d "$skill_dir" ]]; then
        return 0
    fi
    
    # Check if SKILL.md exists
    if [[ ! -f "$skill_dir/SKILL.md" ]]; then
        echo -e "${YELLOW}Warning: $skill_name has no SKILL.md, skipping${NC}"
        return 0
    fi
    
    echo -n "Building $skill_name... "
    
    # Remove old .skill file if exists
    rm -f "$skill_file"
    
    # Create temporary directory for building
    local temp_dir=$(mktemp -d)
    
    # Copy SKILL.md
    cp "$skill_dir/SKILL.md" "$temp_dir/"
    
    # Copy references/ if exists
    if [[ -d "$skill_dir/references" ]]; then
        cp -r "$skill_dir/references" "$temp_dir/"
    fi
    
    # Create ZIP archive (the .skill file)
    (cd "$temp_dir" && zip -rq "$skill_file" .)
    
    # Cleanup
    rm -rf "$temp_dir"
    
    # Get file size
    local size=$(du -h "$skill_file" | cut -f1)
    
    echo -e "${GREEN}Done${NC} ($size)"
}

# Build all skills or specific skill
if [[ -n "$1" ]]; then
    # Build specific skill
    if [[ -d "$SKILLS_DIR/$1" ]]; then
        build_skill "$1"
    else
        echo -e "${RED}Error: Skill '$1' not found${NC}"
        exit 1
    fi
else
    # Build all skills
    echo "Building all skills..."
    echo ""
    
    for skill_path in "$SKILLS_DIR"/*/; do
        skill_name=$(basename "$skill_path")
        build_skill "$skill_name"
    done
fi

echo ""
echo -e "${GREEN}Build complete!${NC}"
echo ""

# List all .skill files with sizes
echo "Generated .skill files:"
echo "------------------------"
find "$SKILLS_DIR" -name "*.skill" -exec ls -lh {} \; | awk '{print $NF, $5}'
