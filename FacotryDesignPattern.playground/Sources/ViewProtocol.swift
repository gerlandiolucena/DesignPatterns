import Foundation

public protocol ViewProtocol {
    var presenter: PresenterProtocol? { get set }
    func refreshView()
    func showError()
}

public protocol PresenterProtocol {
    func viewDidLoad()
    func requestData()
}

public protocol InteractorProtocol {
    var output: HomeInteractorOutput? {get set}
    func requestData()
}

public protocol WireframeProtocol {
    var view: ViewProtocol { get }
    func setup()
}

public protocol  HomeInteractorOutput {
    func successRequest()
    func failedRequest()
}
