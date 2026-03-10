#!/bin/bash

# ── Config ────────────────────────────────────────────
# Update this to match your installed Unity version
UNITY_VERSION="6000.3.10f1"

# ── Unity Tools Path ──────────────────────────────────
# Mac:
UNITY_PATH="/Applications/Unity/Hub/Editor/$UNITY_VERSION/Unity.app/Contents/Tools"

# Optinally you could use this to find the mac path
# UNITY_PATH=$(find /Applications/Unity/Hub/Editor -name "UnityYAMLMerge" 2>/dev/null | head -1 | xargs dirname)

# Windows (uncomment if on PC):
# UNITY_PATH="C:/Program Files/Unity/Hub/Editor/$UNITY_VERSION/Editor/Data/Tools"
# Linux (uncomment if on Linux):
# UNITY_PATH="$HOME/Unity/Hub/Editor/$UNITY_VERSION/Editor/Data/Tools"

# ── Git LFS ───────────────────────────────────────────
echo "Setting up Git LFS..."
git lfs install

# ── Unity Smart Merge driver ──────────────────────────
echo "Configuring UnityYAMLMerge..."
git config merge.unityyamlmerge.name "Unity SmartMerge"
git config merge.unityyamlmerge.driver "'$UNITY_PATH/UnityYAMLMerge' merge -p %O %B %A %A"
git config merge.unityyamlmerge.recursive binary

# ── Branch setup ──────────────────────────────────────
echo "Creating branches..."
git checkout -b develop 2>/dev/null || echo "  develop already exists, skipping"
git checkout main

echo ""
echo "✅ Setup complete!"