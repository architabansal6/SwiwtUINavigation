import SwiftUI

final class Router {
    weak var controller: UIViewController?

    func push<V: View>(_ view: V) {
        let next = UIHostingController(rootView: view)
        navigationController?.pushViewController(next, animated: true)
    }

    func pop() {
        navigationController?.popViewController(animated: true)
    }
}

private extension Router {
    var navigationController: UINavigationController? {
        controller?.navigationController
    }
}
