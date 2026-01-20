#!/bin/bash
#
# Skills Library Install Wizard
# Installs skills for Cursor IDE, Codex CLI, or Claude Desktop
#

set -e

# Color for warning asterisk
RED='\033[0;31m'
NC='\033[0m' # No Color

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
SKILLS_DIR="$REPO_DIR/skills"

# Target directories for each platform
CURSOR_SKILLS_DIR="$HOME/.cursor/skills"
CODEX_SKILLS_DIR="$HOME/.codex/skills"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"

# Count available skills
count_skills() {
    local count=0
    for skill in "$SKILLS_DIR"/*/; do
        skill_name=$(basename "$skill")
        [[ "$skill_name" == _* || "$skill_name" == .* ]] && continue
        ((count++))
    done
    echo $count
}

# List available skills
list_skills() {
    echo ""
    for skill in "$SKILLS_DIR"/*/; do
        skill_name=$(basename "$skill")
        [[ "$skill_name" == _* || "$skill_name" == .* ]] && continue
        if [[ -f "$skill/SKILL.md" ]]; then
            # Extract description from SKILL.md frontmatter
            desc=$(grep -A1 "^description:" "$skill/SKILL.md" 2>/dev/null | head -1 | sed 's/description: //' | cut -c1-60)
            echo "  $skill_name"
            if [[ -n "$desc" ]]; then
                echo "    ${desc}..."
            fi
        fi
    done
    echo ""
}

# Install skills to a target directory
install_skills() {
    local target_dir="$1"
    local platform_name="$2"
    local installed=0
    local updated=0
    local failed=0
    local is_update=false

    # Check if this is an update
    if check_existing "$target_dir"; then
        is_update=true
    fi

    echo ""
    if $is_update; then
        echo "Updating skills..."
    else
        echo "Installing skills..."
    fi
    echo ""

    # Create target directory
    mkdir -p "$target_dir"

    for skill in "$SKILLS_DIR"/*/; do
        skill_name=$(basename "$skill")
        # Skip internal folders
        [[ "$skill_name" == _* || "$skill_name" == .* ]] && continue
        
        # Check if SKILL.md exists
        if [[ ! -f "$skill/SKILL.md" ]]; then
            echo "  Skipping $skill_name (no SKILL.md)"
            continue
        fi

        # Check if skill already exists
        local skill_exists=false
        if [[ -d "$target_dir/$skill_name" ]]; then
            skill_exists=true
        fi

        # Remove existing and copy fresh
        rm -rf "$target_dir/$skill_name"
        mkdir -p "$target_dir/$skill_name"
        
        if cp -R "$skill"/* "$target_dir/$skill_name/" 2>/dev/null; then
            if $skill_exists; then
                echo "  Updated $skill_name"
                ((updated++))
            else
                echo "  Installed $skill_name"
                ((installed++))
            fi
        else
            echo "  FAILED $skill_name"
            ((failed++))
        fi
    done

    echo ""
    if [[ $failed -eq 0 ]]; then
        if [[ $updated -gt 0 && $installed -gt 0 ]]; then
            echo "Successfully updated $updated and installed $installed skills for $platform_name"
        elif [[ $updated -gt 0 ]]; then
            echo "Successfully updated $updated skills for $platform_name"
        else
            echo "Successfully installed $installed skills for $platform_name"
        fi
    else
        local total=$((installed + updated))
        echo "Processed $total skills ($failed failed) for $platform_name"
    fi
}

# Check if skills are already installed
check_existing() {
    local target_dir="$1"
    if [[ -d "$target_dir" ]] && [[ -n "$(ls -A "$target_dir" 2>/dev/null)" ]]; then
        return 0
    fi
    return 1
}

# Print header
print_header() {
    clear
    echo ""
    echo "================================================"
    echo "       Skills Library Install Wizard"
    echo "================================================"
    echo ""
}

# Print platform menu
print_menu() {
    echo "Select where to install skills:"
    echo ""
    if check_existing "$CURSOR_SKILLS_DIR"; then
        echo "  1) Cursor IDE [will update]"
    else
        echo "  1) Cursor IDE"
    fi
    echo -e "     ${RED}*${NC} Requires Nightly build (Cursor > Settings... > Cursor Settings > Beta > Nightly)"
    if check_existing "$CODEX_SKILLS_DIR"; then
        echo "  2) Codex CLI [will update]"
    else
        echo "  2) Codex CLI"
    fi
    if check_existing "$CLAUDE_SKILLS_DIR"; then
        echo "  3) Claude Desktop [will update]"
    else
        echo "  3) Claude Desktop"
    fi
    echo "  4) All of the above"
    echo "  5) List available skills"
    echo "  6) Quit"
    echo ""
}

# Show post-install instructions
show_instructions() {
    echo ""
    echo "Use skills by asking naturally, e.g.: \"Review the UX of this page\""
    echo ""
}

# Main wizard loop
main() {
    local skill_count
    skill_count=$(count_skills)

    while true; do
        print_header
        echo "Found $skill_count skills in this library"
        echo ""
        print_menu
        
        read -rp "Enter choice [1-6]: " choice
        
        case "$choice" in
            1)
                print_header
                echo "Installing for Cursor IDE..."
                install_skills "$CURSOR_SKILLS_DIR" "Cursor IDE"
                show_instructions
                exit 0
                ;;
            2)
                print_header
                echo "Installing for Codex CLI..."
                install_skills "$CODEX_SKILLS_DIR" "Codex CLI"
                show_instructions
                exit 0
                ;;
            3)
                print_header
                echo "Installing for Claude Desktop..."
                install_skills "$CLAUDE_SKILLS_DIR" "Claude Desktop"
                show_instructions
                exit 0
                ;;
            4)
                print_header
                echo "Installing for all platforms..."
                install_skills "$CURSOR_SKILLS_DIR" "Cursor IDE"
                install_skills "$CODEX_SKILLS_DIR" "Codex CLI"
                install_skills "$CLAUDE_SKILLS_DIR" "Claude Desktop"
                show_instructions
                exit 0
                ;;
            5)
                print_header
                echo "Available Skills:"
                list_skills
                read -rp "Press Enter to continue..."
                ;;
            6)
                echo ""
                echo "Goodbye!"
                echo ""
                exit 0
                ;;
            *)
                echo "Invalid choice. Please try again."
                sleep 1
                ;;
        esac
    done
}

# Run the wizard
main
