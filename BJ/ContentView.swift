import SwiftUI
struct ContentView: View {
    @State var show = false
 
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.indigo, .purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            if !show {
                Text("View Transition")
                    .padding()
                    .background(Capsule().stroke())
            } else {
                Image("Mountain")
                    .padding()
                    .zIndex(1)
                
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
                 
            }
                
            
        }
    }}
    
        
        
        struct ContentView_main: PreviewProvider {
            static var previews: some View {
                MainView()
            }
        }
        

