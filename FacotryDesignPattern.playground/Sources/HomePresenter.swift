import Foundation

public struct HomePresenter: PresenterProtocol {
    var view: ViewProtocol?
    var wireframe: WireframeProtocol?
    var interactor: InteractorProtocol?
    
    public init(view: ViewProtocol,
                wireframe: WireframeProtocol,
                interactor: InteractorProtocol) {
        self.view = view
        self.wireframe = wireframe
        self.interactor = interactor
    }
    
    public func viewDidLoad() {
        interactor?.requestData()
    }
    
    public func requestData() {
        interactor?.requestData()
    }
}

extension HomePresenter: HomeInteractorOutput {
    public func successRequest() {
        view?.refreshView()
    }
    
    public func failedRequest() {
        view?.showError()
    }
}
