//
//  ItemsVO.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation

class ItemsVO {
    public var smImage: String = "null"
    public var listPrice: Double = 0
    public var productDisplayName = "no name"
    public var seller: String
    
    init(smImage: String, listPrice: Double, productDisplayName: String, seller: String){
        self.smImage = smImage
        self.listPrice = listPrice
        self.productDisplayName = productDisplayName
        self.seller = seller
    }
}

