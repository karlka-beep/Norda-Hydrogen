#!/usr/bin/env bash
set -e
echo "→ Install Norda-Hydrogen dependencies"
npm install
echo "→ Verify versions"
node -v && npm -v
npx shopify version 2>/dev/null || echo "Shopify CLI bundled via dependencies"
echo "→ Git config defaults (Karl peut override)"
git config --global user.name "Karl" 2>/dev/null || true
git config --global user.email "visageperfect@gmail.com" 2>/dev/null || true
echo "✓ Codespace ready. Run: npm run dev"
echo "  Preview opens auto on port 3000."
