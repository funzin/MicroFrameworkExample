import Foundation
import UIKit

public protocol BuilderProtocol {
    associatedtype Dependency
    static func build(dependency: Dependency, environment: EnvironmentProtocol) -> UIViewController
}
