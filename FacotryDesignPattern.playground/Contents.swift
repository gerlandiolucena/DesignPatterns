import UIKit

public struct HomeViperFactory: VIPERFactoryProtocol {
    
    public static func presenter(wireframe: WireframeProtocol) -> HomePresenter {
        var interactor = self.interactor()
        let presenter = HomePresenter(view: wireframe.view, wireframe: wireframe, interactor: interactor)
        interactor.output = presenter
        return presenter
    }
    
    public static func wireframe() -> HomeWireframe {
        var wireframe = HomeWireframe()
        let presenter: HomePresenter = self.presenter(wireframe: wireframe)
        wireframe.view.presenter = presenter
        return wireframe
    }
    
    public static func interactor() -> HomeInteractor {
        return HomeInteractor()
    }
}

let wireframe = HomeViperFactory.wireframe()
let presenter = HomeViperFactory.presenter(wireframe: wireframe)
let interactor = HomeViperFactory.interactor()

print(wireframe.view.refreshView())
print(wireframe.view.showError())
print(presenter.viewDidLoad())
