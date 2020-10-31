import UIKit
import Core

public final class TabViewController: UITabBarController {
    typealias Dependency = TabRequest.Dependency

    private let environment: EnvironmentProtocol

    init(environment: EnvironmentProtocol) {
        self.environment = environment
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        let aFeatureVC = environment.createViewController(request: AFeatureRequest(dependency: .init(hoge: "")))
        let bFeatureVC = environment.createViewController(request: BFeatureRequest(dependency: .init(foo: "")))
        viewControllers = [
            UINavigationController(rootViewController: aFeatureVC),
            UINavigationController(rootViewController: bFeatureVC)
        ]
    }
}
