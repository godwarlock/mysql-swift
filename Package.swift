import PackageDescription
#if os(OSX)
let package = Package(
    name: "MySQL",
    targets: [
                 Target(name: "SQLFormatter"),
                 Target(name: "MySQL", dependencies: ["SQLFormatter"])
                 ],
    dependencies: [
        .Package(url: "https://github.com/godwarlock/CMySQL-MariaDB.git", majorVersion: 2)
    ]
)
#elseif os(Linux)
let package = Package(
    name: "MySQL",
    targets: [
        Target(name: "SQLFormatter"),
        Target(name: "MySQL", dependencies: ["SQLFormatter"])
    ],
    dependencies: [
        .Package(url: "https://github.com/eason-h/Swift-MySQL-Client-Linux.git", majorVersion: 1)
    ]
)
