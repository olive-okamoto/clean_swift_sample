//
//  CitySelectViewController.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/08.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import UIKit

class CitySelectViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
    }
    
    

}

extension CitySelectViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
