//
//  presenter.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import Foundation
class MainPresenter: BaseImplementation, MainPresenterProtocol {
    
    private var items_to_show = 3
    private var page_to_show = 1
    private var list_items: [ItemsVO] = []
    private var list_searches: [String] = []
    private var repo:WebServiceProtocol = WebService()
    
    /*------> Protocol functions <------*/
    func clickSearch(completion: @escaping (Bool) -> ()) {
        print("Inicia search")
        self.list_items.removeAll()
        if let search = (self.viewToBack!.getContext() as? MainViewController)!.getTextfieldSearch().text {
            print("search es \(search)")
            let search_no_spaces = search.trimmingCharacters(in: .whitespacesAndNewlines)
            repo.searchItems(search: search_no_spaces, page: page_to_show, total_items: items_to_show, completion: { (data) -> () in
                if let item_dict = data as? NSDictionary {
                    print("item es \(item_dict)")
                    let item = ItemsVO(smImage: item_dict["smImage"] as! String,
                                       listPrice: item_dict["listPrice"] as! Double,
                                       productDisplayName: item_dict["productDisplayName"] as! String,
                                       seller: item_dict["seller"] as! String)
                    self.list_items.append(item)
                } else if let response = data as? Bool {
                    completion(response)
                }
            })
        }
    }
    
    func getItemsCount() -> Int{
        return list_items.count
    }
    
    func getItem(item: Int) -> ItemsVO {
        return list_items[item]
    }
        
}
