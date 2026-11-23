#!/bin/bash

# Buddy Solution - Complete Build & Deployment Script
# This script builds and tests the entire platform

set -e

echo "================================"
echo "🚀 BUDDY SOLUTION BUILD SCRIPT"
echo "================================"
echo ""

# Check Node version
echo "Checking Node.js version..."
NODE_VERSION=$(node -v)
echo "✅ Using $NODE_VERSION"
echo ""

# Backend Setup
echo "📦 Setting up backend..."
cd server
npm install --silent
echo "✅ Backend dependencies installed"
echo ""

# Frontend Setup
echo "📦 Setting up frontend..."
cd ../frontend
npm install --silent
echo "✅ Frontend dependencies installed"
echo ""

# Frontend Build
echo "🔨 Building frontend..."
npm run build > /dev/null 2>&1
echo "✅ Frontend built successfully"
BUNDLE_SIZE=$(du -sh dist | cut -f1)
echo "   Bundle size: $BUNDLE_SIZE"
echo ""

# Backend Tests
echo "🧪 Running backend tests..."
cd ../server
npm test
echo ""

# Success Message
echo "✅ ================================"
echo "✅ BUILD COMPLETE"
echo "✅ ================================"
echo ""
echo "🚀 Start the server:"
echo "   cd server && npm start"
echo ""
echo "🌐 Start the frontend (dev):"
echo "   cd frontend && npm run dev"
echo ""
echo "📊 View logs at:"
echo "   http://localhost:5000/api/health"
echo "   http://localhost:5173"
echo ""
