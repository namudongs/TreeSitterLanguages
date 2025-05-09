// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "TreeSitterLanguages",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "TreeSitterLanguagesCommon", targets: ["TreeSitterLanguagesCommon"]),
    .library(name: "TreeSitterC", targets: ["TreeSitterC"]),
    .library(name: "TreeSitterCQueries", targets: ["TreeSitterCQueries"]),
    .library(name: "TreeSitterCRunestone", targets: ["TreeSitterCRunestone"]),
    .library(name: "TreeSitterCPP", targets: ["TreeSitterCPP"]),
    .library(name: "TreeSitterCPPQueries", targets: ["TreeSitterCPPQueries"]),
    .library(name: "TreeSitterCPPRunestone", targets: ["TreeSitterCPPRunestone"]),
    .library(name: "TreeSitterJava", targets: ["TreeSitterJava"]),
    .library(name: "TreeSitterJavaQueries", targets: ["TreeSitterJavaQueries"]),
    .library(name: "TreeSitterJavaRunestone", targets: ["TreeSitterJavaRunestone"]),
    .library(name: "TreeSitterJavaScript", targets: ["TreeSitterJavaScript"]),
    .library(name: "TreeSitterJavaScriptQueries", targets: ["TreeSitterJavaScriptQueries"]),
    .library(name: "TreeSitterJavaScriptRunestone", targets: ["TreeSitterJavaScriptRunestone"]),
    .library(name: "TreeSitterPython", targets: ["TreeSitterPython"]),
    .library(name: "TreeSitterPythonQueries", targets: ["TreeSitterPythonQueries"]),
    .library(name: "TreeSitterPythonRunestone", targets: ["TreeSitterPythonRunestone"]),
    .library(name: "TreeSitterSwift", targets: ["TreeSitterSwift"]),
    .library(name: "TreeSitterSwiftQueries", targets: ["TreeSitterSwiftQueries"]),
    .library(name: "TreeSitterSwiftRunestone", targets: ["TreeSitterSwiftRunestone"]),
    .library(name: "TreeSitterTypeScript", targets: ["TreeSitterTypeScript"]),
    .library(name: "TreeSitterTypeScriptQueries", targets: ["TreeSitterTypeScriptQueries"]),
    .library(name: "TreeSitterTypeScriptRunestone", targets: ["TreeSitterTypeScriptRunestone"]),
  ],
  dependencies: [
    .package(url: "https://github.com/simonbs/Runestone", from: "0.4.1")
  ],
  targets: [
    .target(name: "TreeSitterLanguagesCommon"),
    .target(name: "TreeSitterC", cSettings: [.headerSearchPath("src")]),
    .target(name: "TreeSitterCQueries", resources: [.copy("highlights.scm")]),
    .target(
      name: "TreeSitterCRunestone",
      dependencies: ["Runestone", "TreeSitterC", "TreeSitterCQueries"]),
    .target(name: "TreeSitterCPP", cSettings: [.headerSearchPath("src")]),
    .target(name: "TreeSitterCPPQueries", resources: [.copy("highlights.scm")]),
    .target(
      name: "TreeSitterCPPRunestone",
      dependencies: ["Runestone", "TreeSitterCPP", "TreeSitterCPPQueries", "TreeSitterCQueries"]),
    .target(name: "TreeSitterJava", cSettings: [.headerSearchPath("src")]),
    .target(
      name: "TreeSitterJavaQueries", resources: [.copy("highlights.scm"), .copy("tags.scm")]),
    .target(
      name: "TreeSitterJavaRunestone",
      dependencies: ["Runestone", "TreeSitterJava", "TreeSitterJavaQueries"]),
    .target(name: "TreeSitterJavaScript", cSettings: [.headerSearchPath("src")]),
    .target(
      name: "TreeSitterJavaScriptQueries",
      resources: [
        .copy("highlights-jsx.scm"), .copy("highlights-params.scm"), .copy("highlights.scm"),
        .copy("injections.scm"), .copy("locals.scm"), .copy("tags.scm"),
      ]),
    .target(
      name: "TreeSitterJavaScriptRunestone",
      dependencies: ["Runestone", "TreeSitterJavaScript", "TreeSitterJavaScriptQueries"]),
    .target(name: "TreeSitterPython", cSettings: [.headerSearchPath("src")]),
    .target(
      name: "TreeSitterPythonQueries", resources: [.copy("highlights.scm"), .copy("tags.scm")]),
    .target(
      name: "TreeSitterPythonRunestone",
      dependencies: ["Runestone", "TreeSitterPython", "TreeSitterPythonQueries"]),
    .target(name: "TreeSitterSwift", cSettings: [.headerSearchPath("src")]),
    .target(
      name: "TreeSitterSwiftQueries", resources: [.copy("highlights.scm"), .copy("locals.scm")]),
    .target(
      name: "TreeSitterSwiftRunestone",
      dependencies: ["Runestone", "TreeSitterSwift", "TreeSitterSwiftQueries"]),
    .target(name: "TreeSitterTypeScript", cSettings: [.headerSearchPath("src")]),
    .target(
      name: "TreeSitterTypeScriptQueries",
      resources: [.copy("highlights.scm"), .copy("locals.scm"), .copy("tags.scm")]),
    .target(
      name: "TreeSitterTypeScriptRunestone",
      dependencies: [
        "Runestone", "TreeSitterTypeScript", "TreeSitterTypeScriptQueries",
        "TreeSitterJavaScriptQueries",
      ]),
  ]
)
