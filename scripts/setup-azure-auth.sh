#!/bin/bash

# Azure Artifacts Authentication Setup Script
# React Native Kimlik SDK - Local Development

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
ORGANIZATION="kantlori"
PROJECT="ocr-nfc-liveness-kit"
FEED="ocr-nfc-liveness-kit"
REGISTRY_URL="https://pkgs.dev.azure.com/${ORGANIZATION}/${PROJECT}/_packaging/${FEED}/npm/registry/"

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}Azure Artifacts Auth Setup${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Check if .npmrc already exists
if [ -f .npmrc ]; then
    echo -e "${YELLOW}⚠️  .npmrc already exists${NC}"
    read -p "Do you want to overwrite it? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${RED}❌ Setup cancelled${NC}"
        exit 1
    fi
    mv .npmrc .npmrc.backup
    echo -e "${GREEN}✅ Backed up existing .npmrc to .npmrc.backup${NC}"
fi

# Get PAT Token
echo -e "${YELLOW}📝 You need a Personal Access Token (PAT) from Azure DevOps${NC}"
echo ""
echo -e "How to get PAT:"
echo -e "  1. Go to: https://dev.azure.com/${ORGANIZATION}"
echo -e "  2. User Settings (top right) → Personal Access Tokens"
echo -e "  3. New Token → Scope: ${BLUE}Packaging (Read)${NC}"
echo -e "  4. Copy the token"
echo ""
read -p "Enter your Azure DevOps PAT Token: " PAT_TOKEN

if [ -z "$PAT_TOKEN" ]; then
    echo -e "${RED}❌ PAT Token cannot be empty${NC}"
    exit 1
fi

# Create .npmrc
echo -e "${BLUE}📦 Creating .npmrc...${NC}"

cat > .npmrc << EOF
# Azure Artifacts Registry Configuration
# Organization: ${ORGANIZATION}
# Project: ${PROJECT}
# Feed: ${FEED}

# Registry (no scope)
registry=${REGISTRY_URL}

# Always authenticate
always-auth=true

# Authentication token
//pkgs.dev.azure.com/${ORGANIZATION}/${PROJECT}/_packaging/${FEED}/npm/registry/:_authToken=${PAT_TOKEN}
//pkgs.dev.azure.com/${ORGANIZATION}/${PROJECT}/_packaging/${FEED}/npm/:_authToken=${PAT_TOKEN}

# Enable strict SSL
strict-ssl=true

# Log level
loglevel=warn
EOF

echo -e "${GREEN}✅ .npmrc created successfully${NC}"
echo ""

# Add .npmrc to .gitignore
if ! grep -q ".npmrc" .gitignore 2>/dev/null; then
    echo -e "${BLUE}🔒 Adding .npmrc to .gitignore...${NC}"
    echo "" >> .gitignore
    echo "# NPM authentication (contains PAT token)" >> .gitignore
    echo ".npmrc" >> .gitignore
    echo -e "${GREEN}✅ .npmrc added to .gitignore${NC}"
else
    echo -e "${GREEN}✅ .npmrc already in .gitignore${NC}"
fi

echo ""
echo -e "${BLUE}🧪 Testing authentication...${NC}"

# Test connection
if npm view ocr-nfc-liveness-kit version &>/dev/null; then
    LATEST_VERSION=$(npm view ocr-nfc-liveness-kit version)
    echo -e "${GREEN}✅ Authentication successful!${NC}"
    echo -e "${GREEN}   Latest version: ${LATEST_VERSION}${NC}"
else
    echo -e "${YELLOW}⚠️  Could not fetch package info${NC}"
    echo -e "   This might be normal if the package hasn't been published yet"
fi

echo ""
echo -e "${BLUE}================================${NC}"
echo -e "${GREEN}✅ Setup Complete!${NC}"
echo -e "${BLUE}================================${NC}"
echo ""
echo -e "You can now install the package:"
echo -e "  ${BLUE}npm install ocr-nfc-liveness-kit${NC}"
echo ""
echo -e "${YELLOW}⚠️  Important Security Notes:${NC}"
echo -e "  • ${RED}.npmrc contains your PAT token${NC}"
echo -e "  • ${RED}Never commit .npmrc to Git${NC}"
echo -e "  • ${YELLOW}PAT token expires after 90 days${NC}"
echo -e "  • ${YELLOW}Re-run this script when token expires${NC}"
echo ""
echo -e "${GREEN}Happy coding! 🚀${NC}"
