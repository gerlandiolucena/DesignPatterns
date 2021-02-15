import Foundation

public struct HomeInteractor: InteractorProtocol {
    public var output: HomeInteractorOutput?
    
    public init() {}
    
    public func requestData() {
        output?.successRequest()
    }
}
