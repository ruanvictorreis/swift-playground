import Foundation
import CryptoKit

// MARK: - Extension to encrypt a String

extension String {
    
    var md5: String {
        let digest = Insecure.MD5.hash(data: self.data(using: .utf8) ?? Data())
        return digest.map { String(format: "%02hhx", $0) }.joined()
    }
}

// MARK: - Property Wrappers

@propertyWrapper struct Capitalized {
    
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.capitalized
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}

@propertyWrapper struct Encrypted {
    
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.md5
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.md5
    }
}

// MARK: - Using Property Wrappers in User struct

struct User {
    @Capitalized var firstName: String
    @Capitalized var lastName: String
    @Encrypted var password: String
}

var newUser = User(firstName: "ruan", lastName: "reis", password: "123456")
print(newUser.firstName)
print(newUser.lastName)
print(newUser.password)

newUser.lastName = "amorim"
print(newUser.lastName)
