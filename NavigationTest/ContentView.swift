import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
          RouterProvider { router in
              Button("Push") {
                  router.push(DetailView())
              }
          }
          .navigationTitle("Home")
          .navigationBarTitleDisplayMode(.inline)
        }
        .background(Color.white)
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail")
            .background(Color(.white))
    }
}
