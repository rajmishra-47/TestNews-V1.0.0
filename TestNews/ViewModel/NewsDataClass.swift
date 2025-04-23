import Foundation

class FetchNewsData:ObservableObject{
    
    @Published
    var Articles:[Article]=[]
    
    func fethcData() async{
        
        guard let url=URL(string:"https://newsapi.org/v2/everything?q=apple&from=2025-04-17&to=2025-04-17&sortBy=popularity&apiKey=e4b06c9b3e124a27ab7b1f7e980ab60a")else{
            print("Invalid URL")
            return
        }
        
        do{
            let(data,_)=try await URLSession.shared.data(from:url)
            let newsData=try JSONDecoder().decode(newsData.self, from:data)
            
            Articles=newsData.articles!
            
        }
        catch{
            print(error)
            return
        }
        
    }
    
    
}
