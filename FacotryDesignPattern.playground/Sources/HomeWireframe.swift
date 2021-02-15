import Foundation

public struct HomeWireframe: WireframeProtocol {
    public var view: ViewProtocol
    
    public init() {
        view = HomeView()
    }
    
    public func setup() {
        
    }
}
