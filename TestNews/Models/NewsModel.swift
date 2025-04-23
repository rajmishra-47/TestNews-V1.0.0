
import Foundation

struct Article:Codable,Identifiable{
    var id:UUID?
    var author:String?
    var title:String?
    var description:String?
    var url:String?
    var urlToImage:String?
}

struct newsData:Codable{
    var articles:[Article]?
}
