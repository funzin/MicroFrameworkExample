import UIKit

public protocol EnvironmentProtocol: ViewControllerProviderProtocol {
    var apiClient: APIClientProtocol { get }
}
