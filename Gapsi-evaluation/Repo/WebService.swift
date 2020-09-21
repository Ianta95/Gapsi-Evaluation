//
//  webservice.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation
import Alamofire

class WebService: WebServiceProtocol{
    
    private let WSB = WebServiceBuilder()
    
    /*------> Web Service functions <------*/
    public func searchItems(search: String, page: Int, total_items: Int, completion: @escaping (Any?) -> ()) {
        AF.request(WSB.getUrl(search: search, page: page, limit: total_items),
                   method: .get,
                   encoding: URLEncoding.httpBody).responseJSON { response in
                    switch (response.result) {
                    case .success(let JSON):
                        let response = JSON as! NSDictionary
                        // Toma id response
                        //print("response es \(response)")
                        if let plpResults = response.object(forKey: "plpResults") as? NSDictionary{
                            //print("Results es \(plpResults)")
                            /*if let records = plpResults.object(forKey: "records") as? NSDictionary {
                                print("Si se pudo, records es \(records)")
                            }*/
                            if let records = plpResults["records"] as? [NSDictionary] {
                                print("Records es \(records)")
                                for item in records {
                                    print("Record to update \(item)")
                                    completion(item)
                                }
                            }
                            completion(true)
                            //print("records es \(plpResults["records"])")
                        }
                        
                        break
                    case .failure(let error):
                        print("Failure, error es: \(error)")
                    }
                    print(response)
                }
    }
}
