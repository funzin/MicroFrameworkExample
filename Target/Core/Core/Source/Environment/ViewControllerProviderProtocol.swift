import UIKit

public protocol ViewControllerProviderProtocol {
    func createViewController(request: AFeatureRequest) -> UIViewController
    func createViewController(request: BFeatureRequest) -> UIViewController
    func createViewController(request: TabRequest) -> UIViewController
}
