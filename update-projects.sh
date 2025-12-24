#!/bin/bash

# Create various uv project types to demonstrate different init options

set -e

# Override git author name for all uv init commands
export GIT_CONFIG_COUNT=1
export GIT_CONFIG_KEY_0=user.name
export GIT_CONFIG_VALUE_0="Demo User"

# Remove existing directories
echo "Cleaning up existing directories..."
rm -rf uv-init uv-init-package uv-init-no-package uv-init-app uv-init-lib uv-init-bare

echo "Creating uv-init (default)..."
uv init uv-init --no-workspace

echo "Creating uv-init-package (--package)..."
GIT_CONFIG_COUNT=2 GIT_CONFIG_KEY_1=user.email GIT_CONFIG_VALUE_1=github-actions[bot]@users.noreply.github.com uv init uv-init-package --package --no-workspace

echo "Creating uv-init-no-package (--no-package)..."
uv init uv-init-no-package --no-package --no-workspace

echo "Creating uv-init-app (--app)..."
uv init uv-init-app --app --no-workspace

echo "Creating uv-init-lib (--lib)..."
GIT_CONFIG_COUNT=2 GIT_CONFIG_KEY_1=user.email GIT_CONFIG_VALUE_1=github-actions[bot]@users.noreply.github.com uv init uv-init-lib --lib --no-workspace

echo "Creating uv-init-bare (--bare)..."
uv init uv-init-bare --bare --no-workspace

echo "All projects created successfully!"

# Generate README.md
echo "Generating README.md..."
UV_VERSION=$(uv --version)

cat > README.md << 'EOF'
# uv init demos

This repository contains examples of projects created with different `uv init` arguments.

Generated using: UV_VERSION_PLACEHOLDER

## Projects

EOF

# Function to add project section
add_project_section() {
    local dir=$1
    local flag=$2
    local cmd="uv init $dir"
    if [ -n "$flag" ]; then
        cmd="uv init $dir $flag"
    fi

    echo "### [$dir](./$dir/)" >> README.md
    echo "" >> README.md
    echo "\`\`\`bash" >> README.md
    echo "$cmd" >> README.md
    echo "\`\`\`" >> README.md
    echo "" >> README.md
    echo "Files:" >> README.md
    echo "" >> README.md
    echo "\`\`\`" >> README.md
    (cd "$dir" && find . -type f | sort) >> README.md
    echo "\`\`\`" >> README.md
    echo "" >> README.md
}

add_project_section "uv-init" ""
add_project_section "uv-init-package" "--package"
add_project_section "uv-init-no-package" "--no-package"
add_project_section "uv-init-app" "--app"
add_project_section "uv-init-lib" "--lib"
add_project_section "uv-init-bare" "--bare"

# Replace placeholder with actual version
sed -i '' "s/UV_VERSION_PLACEHOLDER/$UV_VERSION/" README.md

echo "README.md generated!"
