//
//  BaseViewController.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import UIKit

class BaseViewController: UIViewController, CallBackProtocol {
    let userDefault = UserDefaults.standard
    
    public var context: BaseViewController?
    public var presenter: BasePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func onCallBack(params: Any) {
        hideLoadDialog()
    }
    
    func showError(message: String) {
        hideLoadDialog()
    }
    
    func showMessage(title: String, message: String) {
        hideLoadDialog()
    }
    
    func showUpload() {
        hideLoadDialog()
    }
    
    func getCallBack() -> CallBackProtocol {
        return self
    }
    
    func showLoadDialog() {
        
    }
    
    func hideLoadDialog() {
        
    }
    
    func getContext() -> BaseViewController {
        return self.context!
    }

    
    // write
    func writeAnyData(key: String, value: Any){
        userDefault.set(value, forKey: key)
        userDefault.synchronize()
    }
    // read int values
    func readIntData(key: String) -> Int{
        if userDefault.object(forKey: key) == nil {
               return 0
        } else {
            return userDefault.integer(forKey: key)
        }
    }
    // read string values
    func readStringData(key: String) -> String{
        if userDefault.object(forKey: key) == nil {
            return ""
        } else {
            return userDefault.string(forKey: key)!
        }
    }
    // read bool value
    func readBoolData(key: String) -> Bool{
        if userDefault.object(forKey: key) == nil {
            return false
        } else {
            return userDefault.bool(forKey: key)
        }
    }
}
