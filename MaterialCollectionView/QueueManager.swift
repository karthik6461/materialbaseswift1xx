class QueueManager {
    
    class var sharedInstance: QueueManager {
        
        struct Static {
            
            static let instance = QueueManager()
            
        }
        
        return Static.instance
        
    }
    
    
    
    
    
    public func listQueues() -> [String] {
        
        var queuenames : [String] = []
        
        queuenames.append("one")
        
        queuenames.append("two")
        
        queuenames.append("three")
        
        queuenames.append("four")
        
        return queuenames
        
    }
    
    
    
}