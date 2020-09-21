//
//  WebServiceBuilder.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation

class WebServiceBuilder {
    public func getUrl(search: String, page: Int = 0, limit: Int = 20) -> String {
        let url_return = "https://shoppapp.liverpool.com.mx/appclienteservices/services/v3/plp?force-plp=true&search-string=\(search)&page-number=\(page)&number-of-items-per-page=\(limit)"
        return url_return
    }
    
}
