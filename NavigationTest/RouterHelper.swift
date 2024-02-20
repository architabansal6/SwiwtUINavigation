import SwiftUI

struct RouterProvider<Content: View>: View {
    let content: (Router) -> Content
    private let router = Router()

    var body: some View {
        content(router)
            .background(HostController(router: router))
    }
}

private struct HostController: UIViewControllerRepresentable {
    var router: Router
    
    func makeUIViewController(context: Context) -> UIViewController {
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        router.controller = uiViewController
    }
}
