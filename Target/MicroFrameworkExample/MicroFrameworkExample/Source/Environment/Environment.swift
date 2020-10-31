import UIKit
import AFeature
import BFeature
import Tab
import Core

final class Environment: EnvironmentProtocol {

    static let shared = Environment()
    let apiClient: APIClientProtocol

    private init(apiClient: APIClientProtocol = APIClient.shared) {
        self.apiClient = apiClient
    }
}


