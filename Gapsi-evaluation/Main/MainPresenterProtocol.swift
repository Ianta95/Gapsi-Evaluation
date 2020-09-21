//
//  MainProtocol.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation

protocol MainPresenterProtocol {
    func clickSearch(completion: @escaping (Bool) -> ())
    func getItemsCount() -> Int
    func getItem(item: Int) -> ItemsVO
}
