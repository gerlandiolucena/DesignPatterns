import Foundation

public struct HomeView: ViewProtocol {
    public var presenter: PresenterProtocol?
    
    public func refreshView() {
        print("Refresh view")
    }
    
    public func showError() {
        print("Show error screen")
    }
}
