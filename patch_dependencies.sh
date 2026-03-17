#!/bin/bash
git clone https://github.com/steipete/ElevenLabsKit.git apps/ios/.spm-packages/ElevenLabsKit
git clone https://github.com/steipete/Commander.git apps/ios/.spm-packages/Commander
git clone https://github.com/apple/swift-testing apps/ios/.spm-packages/swift-testing
git clone https://github.com/swiftlang/swift-syntax.git apps/ios/.spm-packages/swift-syntax
find apps/ios/.spm-packages -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.2/swift-tools-version: 6.0/g' {} + || true
find apps/ios/.spm-packages -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.1/swift-tools-version: 6.0/g' {} + || true
find packages -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.2/swift-tools-version: 6.0/g' {} + || true
find packages -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.1/swift-tools-version: 6.0/g' {} + || true
find Swabble -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.2/swift-tools-version: 6.0/g' {} + || true
find Swabble -name "Package.swift" -exec sed -i '' 's/swift-tools-version: 6.1/swift-tools-version: 6.0/g' {} + || true
