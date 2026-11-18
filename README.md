<div align="center">

# Valyrix iOS SDK

**Official Swift Package Manager distribution repository for the Valyrix Mobile Telemetry Engine.**

[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-F7931A.svg?style=flat-square)](https://swift.org/package-manager/)
[![iOS 14.0+](https://img.shields.io/badge/iOS-14.0%2B-0F172A.svg?style=flat-square)](https://developer.apple.com/ios/)
[![Swift 5.9+](https://img.shields.io/badge/Swift-5.9%2B-F05138.svg?style=flat-square)](https://swift.org)
[![Release](https://img.shields.io/badge/Release-v1.1.0-22C55E.svg?style=flat-square)](https://github.com/valyrix-io/valyrix-ios-framework/releases)

<br/>

[📖 **Explore Full Documentation**](https://docs.valyrix.io/sdks/ios) &nbsp;•&nbsp; [🌐 **Valyrix Console**](https://valyrix.io) &nbsp;•&nbsp; [💬 **Developer Support**](https://valyrix.io/support)

<br/>

</div>

Valyrix is an ultra high-performance, real-time product analytics, crash reporting, session replay, and feature flagging platform built specifically for mobile applications.

---

## 📦 Installation via Swift Package Manager

### In Xcode:
1. Open your project in Xcode.
2. Navigate to **File** > **Add Package Dependencies...**
3. Enter the repository URL in the search field:
   ```text
   https://github.com/valyrix-io/valyrix-ios-framework.git
   ```
4. Under **Dependency Rule**, select **Up to Next Major Version** starting at `1.1.0`.
5. Click **Add Package** and link `Valyrix` to your application target.

---

### In `Package.swift`:
If integrating into a Swift package or modular framework, add `Valyrix` to your dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/valyrix-io/valyrix-ios-framework.git", from: "1.1.0")
]
```

And add it to your target:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "Valyrix", package: "valyrix-ios-framework")
    ]
)
```

---

## ⚡ Quick Start

### 1. Initialize the SDK
Initialize Valyrix in your SwiftUI `App` init or `AppDelegate`:

```swift
import SwiftUI
import Valyrix

@main
struct MyApp: App {
    init() {
        let config = ValyrixConfig(
            writeKey: "SDK-your-project-id-write-key",
            serverUrl: "https://api.valyrix.io",
            flushIntervalSeconds: 30,
            trackLifecycleEvents: true,
            trackScreenViews: true,
            enableCrashReporting: true,
            enableFeatureFlags: true
        )
        Valyrix.initialize(config: config)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

### 2. Identify Users
Associate anonymous events with an authenticated user profile:

```swift
Valyrix.identify(userId: "usr_99812", traits: [
    "email": "user@example.com",
    "plan": "enterprise",
    "name": "Jane Doe"
])
```

### 3. Track Custom Events
Dispatch custom behavioral and telemetry events:

```swift
Valyrix.track("order_completed", properties: [
    "order_id": "ord_88219",
    "total_cents": 4999,
    "currency": "USD",
    "item_count": 3
])
```

### 4. Feature Flags & Experiments
Evaluate feature flags with sub-millisecond local cache reads:

```swift
if Valyrix.isFeatureEnabled("new_checkout_flow", defaultValue: false) {
    // Show upgraded experience
}
```

---

## 📖 Official Documentation & Guides

For deep dives, complete parameter references, and advanced configuration, explore our official documentation:

* [📘 **Complete iOS SDK Guide**](https://docs.valyrix.io/sdks/ios) — Full configuration options, event batching, offline queueing, and lifecycle telemetry.
* [🛡️ **Privacy & PII Masking**](https://docs.valyrix.io/privacy) — Client-side data redaction, sensitive property filtering, and compliance standards.
* [🚩 **Feature Flags & Remote Config**](https://docs.valyrix.io/features/flags) — Real-time rollouts, cohort targeting, and multivariate experiments.
* [🐛 **Crash Reporting & Symbolication**](https://docs.valyrix.io/crash-reporting) — dSYM upload pipelines, stack trace symbolication, and breadcrumbs.
* [🎥 **Mobile Session Replay**](https://docs.valyrix.io/features/session-replay) — Visual session reconstruction with automated privacy masking.
* [💬 **Community & Support**](https://valyrix.io/support) — Join our Discord, report issues, or get direct engineering help.

---

## 🔒 Security & Architecture

This repository distributes the official pre-compiled, ABI-stable `Valyrix.xcframework` binary target:
- Built with `BUILD_LIBRARY_FOR_DISTRIBUTION=YES` for Swift runtime evolution compatibility.
- Dual-architecture slice support: `iOS Device (arm64)` and `iOS Simulator (arm64 + x86_64)`.
- Includes full debugging symbols (`dSYM`) for stack trace symbolication.
- Zero required third-party dependencies at consumer resolution time.
