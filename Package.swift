import PackageDescription

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
