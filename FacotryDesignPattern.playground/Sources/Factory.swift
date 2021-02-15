import Foundation

public struct Product {
    public let name: String
    public let category: String
    public let price: Double
}

public struct Customer {
    public let name: String
    public let address: String
    public let addressNumber: Int
    public let email: String
}

public protocol FactoryProtocol {
    associatedtype T
    static func instanciate() -> T
}

public struct Factory {
    public static func instanciate() -> Product {
        return Product(name: "Lápis", category: "Escritório", price: 1.20)
    }
    
    public static func instanciate() -> Customer {
        return Customer(name: "Josefino do Amaral", address: "Rua dos Moradores", addressNumber: 225, email: "jamaral@jpg.com")
    }
}

public struct ProductFactory: FactoryProtocol {
    public static func instanciate() -> Product {
        return Product(name: "Lápis", category: "Escritório", price: 1.20)
    }
}

public struct CustomerFactory: FactoryProtocol {
    public static func instanciate() -> Customer {
        return Customer(name: "Josefino do Amaral", address: "Rua dos Moradores", addressNumber: 225, email: "jamaral@jpg.com")
    }
}


