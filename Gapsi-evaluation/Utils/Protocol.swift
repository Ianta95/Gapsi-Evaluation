//
//  protocol.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation

protocol Protocol {
    func onRegisterView(viewToBack: CallBackProtocol)
    func onCreate(params: Any)
    func onExecute(params: Any)
    func onReturnResult(params: Any)
    func onStop(params: Any)
}
