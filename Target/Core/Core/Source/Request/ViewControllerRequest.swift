import Foundation
import UIKit

public protocol ViewControllerRequest: EnvironmentRequest where EnvironmentResponse == UIViewController {
    associatedtype Dependency
    associatedtype EnvironmentResponse = UIViewController
    var dependency: Dependency { get }

    func response<Builder>(for builder: Builder.Type, environment: EnvironmentProtocol) -> EnvironmentResponse where Builder: BuilderProtocol,
                                                                                                                     Builder.Dependency == Dependency
}

extension ViewControllerRequest {
    public func response<Builder>(for builder: Builder.Type, environment: EnvironmentProtocol) -> EnvironmentResponse where Builder: BuilderProtocol,
                                                                                                                            Builder.Dependency == Dependency {
        let vc = Builder.build(dependency: dependency, environment: environment)
        return vc
    }
}
