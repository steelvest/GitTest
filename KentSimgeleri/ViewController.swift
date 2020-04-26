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
    var sehirIsimleri = [String]()
    var sehirResimleri = [UIImage]()
    var secilenSehir = ""
    var secilenSehirResim = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        sehirIsimleri.append("Aksaray")
        sehirIsimleri.append("Adana")
        sehirIsimleri.append("Şanlıurfa")
        sehirIsimleri.append("İstanbul")
        
        
        sehirResimleri.append(UIImage(named: "aksaray")!)
        sehirResimleri.append(UIImage(named: "adana")!)
        sehirResimleri.append(UIImage(named: "urfa")!)
        sehirResimleri.append(UIImage(named: "istanbul")!)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            sehirIsimleri.remove(at: indexPath.row)
            sehirResimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirIsimleri[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sehirIsimleri.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenSehir = sehirIsimleri[indexPath.row]
        secilenSehirResim = sehirResimleri[indexPath.row]
        performSegue(withIdentifier: "toSehirDetay", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSehirDetay" {
            let sehirDetaySayfasi = segue.destination as! sehirDetay
            sehirDetaySayfasi.secilensehirAdi = secilenSehir
            sehirDetaySayfasi.secilensehirResmi = secilenSehirResim
        }
    }
}

