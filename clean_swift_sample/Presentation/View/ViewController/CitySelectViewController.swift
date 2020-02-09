//
//  CitySelectViewController.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/08.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import UIKit

protocol CityListViewInput {
    func setCtiyListModel(_: CityListModel)
}

class CitySelectViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cityListModel: CityListModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        
        
    }
}

// MARK: CityListViewInput
extension CitySelectViewController: CityListViewInput {
    
    func setCtiyListModel(_ cityListModel: CityListModel) {
        self.cityListModel = cityListModel
        self.tableView.reloadData()
    }
    
}

// MARK: Table view delegate and datasource
extension CitySelectViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityListModel?.cities.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CitySelectTableViewCell.className, for: indexPath) as! CitySelectTableViewCell
        
        
        let city: CityModel = cityListModel!.cities[indexPath.row]
        cell.updateCell(cityModel: city)
        
        return cell
    }
    
    
}
