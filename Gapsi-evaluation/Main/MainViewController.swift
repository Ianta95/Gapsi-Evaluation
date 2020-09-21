//
//  ViewController.swift
//  Gapsi-evaluation
//
//  Created by Jesus Barragan  on 21/09/20.
//

import UIKit

class MainViewController: BaseViewController, MainProtocol {
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var txtfieldSearch: UITextField!
    @IBOutlet weak var btnSearch: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Almacena contexto
        context = self
        // Configurar presenter
        presenter = MainPresenter()
        presenter!.onRegisterView(viewToBack: getCallBack())
        presenter!.onExecute(params: 0)
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func getTextfieldSearch() -> UITextField {
        self.txtfieldSearch
    }

    @IBAction func clickSearch(_ sender: Any) {
        (self.presenter as! MainPresenter).clickSearch { (response) in
            if (response) {
                self.tableview.reloadData()
            }
        }
    }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.presenter as! MainPresenter).getItemsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = (self.presenter as! MainPresenter).getItem(item: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom_cell", for: indexPath) as! CustomTableViewCell
        cell.update_cell(title: item.productDisplayName, cost: "$\(item.listPrice)", location: item.seller, image: item.smImage)
        return cell
    }
    
    
}

