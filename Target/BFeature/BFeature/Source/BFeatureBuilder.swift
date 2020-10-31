import Core
import UIKit

public enum BFeatureBuidler: BuilderProtocol {
    public typealias Dependency = BFeatureRequest.Dependency

    public static func build(dependency: Dependency, environment: EnvironmentProtocol) -> UIViewController {
        return BFeatureViewController(dependency: dependency, environment: environment)
    }
}
