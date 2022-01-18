

import Foundation

class WebServiceHandler {
    
    static let sharedInstance = WebServiceHandler()
    private init() {}
    
    var isLoading = false
    
    func signup() {
        isLoading = true
    }
}
