import Foundation

public protocol VIPERFactoryProtocol {
    associatedtype P where P : PresenterProtocol
    associatedtype W where W : WireframeProtocol
    associatedtype I where I : InteractorProtocol

    static func presenter(wireframe: WireframeProtocol) -> P

    static func wireframe() -> W
    static func interactor() -> I
}
