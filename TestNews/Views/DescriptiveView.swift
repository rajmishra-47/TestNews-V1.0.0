
import SwiftUI

struct DescriptiveView: View {
    
    var img:String?
    var title:String
    var author:String?
    var description:String
    
    var body: some View {
       
        VStack{
        
           
            VStack{
                AsyncImage(url:URL(string:"\(img!)")).frame(width:500,height: 250).clipped()
                
            }
            
            
            ScrollView {
                VStack{
                    
                    Text("\(title)").font(.title)
                    Text("\(author!)").foregroundColor(.blue)
                    Text("\(description)")
                        
                }
                .padding().frame(width:400).clipped()
            }

            
            
        }
        
    }
}

