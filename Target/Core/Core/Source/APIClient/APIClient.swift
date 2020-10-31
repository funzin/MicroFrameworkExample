import Foundation

public protocol APIClientProtocol {
    func send()
}

public final class APIClient: APIClientProtocol {
    public static let shared = APIClient()
    public func send() {}
}
