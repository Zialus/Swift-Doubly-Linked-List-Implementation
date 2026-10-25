# Swift-Doubly-Linked-List-Implementation

Doubly Linked List Implementation written in Swift

[![Swift][swift-badge]][swift-url]
[![Platform][platform-badge]][platform-url]
[![CI Pipeline][gha-badge]][gha-url]
[![CodSpeed](https://img.shields.io/endpoint?url=https://codspeed.io/badge.json)](https://app.codspeed.io/Zialus/Swift-Doubly-Linked-List-Implementation?utm_source=badge)

[![Quality Gate Status][sonar-badge]][sonar-url]

## Benchmarks

Performance is tracked continuously with [CodSpeed](https://codspeed.io). The
benchmark scenarios live in `Sources/Benchmarks/main.swift` and are declared in
`codspeed.yml`. To run them locally with the [CodSpeed CLI](https://codspeed.io/docs/cli):

```sh
swift build -c release --product Benchmarks -Xswiftc -g
codspeed run -m simulation
```

[swift-badge]: https://img.shields.io/badge/Swift-5.10-orange.svg?style=flat
[swift-url]: https://swift.org

[platform-badge]: https://img.shields.io/badge/Platforms-macOS%20--%20Linux-blue.svg?style=flat
[platform-url]: https://swift.org

[gha-badge]: https://github.com/Zialus/Swift-Doubly-Linked-List-Implementation/actions/workflows/swift.yml/badge.svg
[gha-url]: https://github.com/Zialus/Swift-Doubly-Linked-List-Implementation/actions/workflows/swift.yml

[sonar-badge]: https://sonarcloud.io/api/project_badges/measure?project=Zialus_Swift-Doubly-Linked-List-Implementation&metric=alert_status
[sonar-url]: https://sonarcloud.io/dashboard?id=Zialus_Swift-Doubly-Linked-List-Implementation
