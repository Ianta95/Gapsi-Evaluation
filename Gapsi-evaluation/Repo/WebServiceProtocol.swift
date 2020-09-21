//
//  WebServiceProtocol.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation

protocol WebServiceProtocol {
    func searchItems(search: String, page: Int, total_items: Int, completion: @escaping (Any?) -> ())
}

