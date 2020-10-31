import Core
import UIKit

public enum AFeatureBuidler: BuilderProtocol {
    public typealias Dependency = AFeatureRequest.Dependency

    public static func build(dependency: Dependency, environment: EnvironmentProtocol) -> UIViewController {
        return AFeatureViewController(dependency: dependency, environment: environment)
    }
}
