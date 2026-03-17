#!/bin/bash
find . -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.2.0/swift-tools-version: 6.0.0/g' {} + || true
find . -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.2/swift-tools-version: 6.0/g' {} + || true
find . -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.1/swift-tools-version: 6.0/g' {} + || true

# For Xcodegen project.yml
sed -i '' 's/SWIFT_VERSION: "6.2"/SWIFT_VERSION: "6.0"/g' apps/ios/project.yml || true
sed -i '' 's/SWIFT_VERSION: "6.1"/SWIFT_VERSION: "6.0"/g' apps/ios/project.yml || true
