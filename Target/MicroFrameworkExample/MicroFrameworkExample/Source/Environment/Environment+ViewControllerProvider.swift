import AFeature
import BFeature
import Tab
import Core
import UIKit

extension Environment {
    func createViewController(request: AFeatureRequest) -> UIViewController {
        return request.response(for: AFeatureBuidler.self, environment: self)
    }

    func createViewController(request: BFeatureRequest) -> UIViewController {
        return request.response(for: BFeatureBuidler.self, environment: self)
    }

    func createViewController(request: TabRequest) -> UIViewController {
        return request.response(for: TabBuilder.self, environment: self)
    }
}
