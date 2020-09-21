//
//  BaseImplementation.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation
class BaseImplementation: BasePresenter {
    public var viewToBack: CallBackProtocol?
    
    func onRegisterView(viewToBack: CallBackProtocol) {
        self.viewToBack = viewToBack
    }
        
    func onCreate(params: Any) {
        print("onCreate process")
    }
        
    func onExecute(params: Any) {
        print("onExecute process")
    }
        
    func onReturnResult(params: Any) {
        print("onReturnResult process")
        if (viewToBack != nil) {
            viewToBack!.onCallBack(params: params)
        }
    }
        
    func onStop(params: Any) {
        print("onStop process")
    }
        
}
