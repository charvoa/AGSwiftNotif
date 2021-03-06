import Foundation

public class AGSwiftNotif {
    
    private var observerList = [AnyObject]()
    
    public init(){
        
    }
    public func registerObserver(name:String!, object:AnyObject?=nil, completionHandler:(NSNotification!)->Void){
        let observer = NSNotificationCenter.defaultCenter().addObserverForName(name, object: object, queue: nil, usingBlock: completionHandler)
        
        observerList.append(observer)
    }
    
    public func postNotification(name:String!,infos:[NSObject:AnyObject]?=nil){
        NSNotificationCenter.defaultCenter().postNotificationName(name, object: nil, userInfo: infos)
    }
    
    public func registerGroupObserver(names:[String],object:AnyObject?=nil, completionHandler:(NSNotification!)->Void){
        for name in names{
            let observer = NSNotificationCenter.defaultCenter().addObserverForName(name, object: object, queue: nil, usingBlock: completionHandler)
            observerList.append(observer)
        }
    }
    
    deinit{
        for observer in observerList{
            NSNotificationCenter.defaultCenter().removeObserver(observer)
        }
        observerList = []
    }
}
