import Foundation

public struct AFeatureRequest: ViewControllerRequest {
    public let dependency: Dependency
    public init(dependency: Dependency) {
        self.dependency = dependency
    }
}

extension AFeatureRequest {
    public struct Dependency {
        public let hoge: String

        public init(hoge: String) {
            self.hoge = hoge
        }
    }
}
