//
//  ViewController.swift
//  KentSimgeleri
//
//  Created by Oğuz Özgül on 26.04.2020.
//  Copyright © 2020 Oğuz Özgül. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource   {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        var sehirIsimleri = [String]()
        sehirIsimleri.append("Aksaray")
        sehirIsimleri.append("Adana")
        sehirIsimleri.append("Şanlıurfa")
        sehirIsimleri.append("İstanbul")
        
        var sehirResimleri = [UIImage]()
        sehirResimleri.append(UIImage(named: "aksaray")!)
        sehirResimleri.append(UIImage(named: "adana")!)
        sehirResimleri.append(UIImage(named: "urfa")!)
        sehirResimleri.append(UIImage(named: "istanbul")!)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

