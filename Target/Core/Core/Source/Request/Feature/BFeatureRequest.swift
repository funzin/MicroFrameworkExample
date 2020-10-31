import Foundation

public struct BFeatureRequest: ViewControllerRequest {
    public let dependency: Dependency
    public init(dependency: Dependency) {
        self.dependency = dependency
    }
}

extension BFeatureRequest {
    public struct Dependency {
        public let foo: String

        public init(foo: String) {
            self.foo = foo
        }
    }
}
