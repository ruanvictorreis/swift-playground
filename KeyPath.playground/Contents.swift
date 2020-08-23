struct User {
    let name: String
    let age: Int
}

let personOne = User(name: "Ruan", age: 28)
let personTwo = User(name: "Ana", age: 34)
let users = [personOne, personTwo]

// MARK: - Creating Key Paths
let nameKeyPath = \User.name
let ageKeyPath = \User.age

// MARK: - Using Key Paths
let name = personOne[keyPath: nameKeyPath] // Same of personOne.name
let age = personOne[keyPath: ageKeyPath] // Same of personOne.age

// MARK: - Using Key Paths Expressions as Functions

// In Swift 5.2 you can use this:
let usernames = users.map(\.name)

// You don't need to use this anymore:
let usernamesOld = users.map({ $0.name })
