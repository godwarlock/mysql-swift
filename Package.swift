import PackageDescription

let package = Package(
    name: "MySQL",
    dependencies: [
        .Package(url: "https://github.com/godwarlock/CMySQL-MariaDB.git", majorVersion: 2)
    ],
    targets: [
                 Target(name: "SQLFormatter"),
                 Target(name: "MySQL", dependencies: ["SQLFormatter"])
                 ]
)
