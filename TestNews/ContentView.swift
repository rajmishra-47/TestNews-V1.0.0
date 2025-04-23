
import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FetchNewsData()
    
    var body: some View {
        
        NavigationStack{
            
            
            VStack {
                
                Text("Headlines").font(.largeTitle).bold()
                
                List(Array(viewModel.Articles.enumerated()), id: \.offset) { index, article in
                    HStack {
                        
                        VStack(alignment:.leading){
                            
                            AsyncImage(url:URL(string:"\(article.urlToImage ?? "")")).frame(width:100,height: 100)
                                .clipped()
                        }
                        
                        
                        VStack(alignment:.leading){
                           
                            Text(article.title ?? "No data").font(.headline)
                            Text("\(article.author ?? "Unknown")").foregroundColor(.blue)
                            NavigationLink("",destination: DescriptiveView(img:article.urlToImage!, title: article.title!, author: article.author!, description: article.description!))
                        }
                        
                        Spacer()
                    }
                }
                
            }
            .onAppear(){
                
                Task{
                    await viewModel.fethcData()
                }
            }

            
        }
        
        
    }
}


//#Preview {
//    ContentView()
//}
