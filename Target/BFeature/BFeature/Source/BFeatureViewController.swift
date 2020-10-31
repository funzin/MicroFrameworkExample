import UIKit
import Core

public final class BFeatureViewController: UIViewController {
    typealias Dependency = BFeatureRequest.Dependency

    private let dependency: Dependency
    private let environment: EnvironmentProtocol

    init(dependency: Dependency, environment: EnvironmentProtocol) {
        self.dependency = dependency
        self.environment = environment
        super.init(nibName: nil, bundle: nil)
        title = "BFeature"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
