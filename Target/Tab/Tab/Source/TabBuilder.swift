import Core
import UIKit

public enum TabBuilder: BuilderProtocol {
    public typealias Dependency = TabRequest.Dependency

    public static func build(dependency: Dependency, environment: EnvironmentProtocol) -> UIViewController {
        return TabViewController(environment: environment)
    }
}
