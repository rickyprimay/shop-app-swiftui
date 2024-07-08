import SwiftUI

struct Home: View {
    @State var selectedCategory = ""
    
    var body: some View {
        ScrollView {
            VStack {
                // Header
                HStack {
                    Text("Order from the best of **Item**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70, height: 90)
                        .background(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                }
                CategoryListView
            }
            .padding(30)
        }
    }
    // Category List View
    var CategoryListView: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                ForEach(categoryList, id: \.id) { item in
                    Button {
                        selectedCategory = item.title
                    } label: {
                        HStack {
                            Image(item.icon)
                            Text(item.title)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Home()
}
