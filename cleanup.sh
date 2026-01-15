#!/bin/bash

# Clean generated files
rm -rf _docs _site .quarto _proc

# Clean Python artifacts
rm -rf *.egg-info dist build
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null
find . -type f -name "*.pyc" -delete

# Clean notebooks
nbdev_clean

# Rebuild everything
nbdev_export
nbdev_docs

echo "Cleanup complete! Preview with: nbdev_preview"