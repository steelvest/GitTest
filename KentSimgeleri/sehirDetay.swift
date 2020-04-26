//
//  sehirDetay.swift
//  KentSimgeleri
//
//  Created by Oğuz Özgül on 26.04.2020.
//  Copyright © 2020 Oğuz Özgül. All rights reserved.
//

import UIKit

class sehirDetay: UIViewController {

    @IBOutlet weak var resimSehir: UIImageView!
    @IBOutlet weak var labelSehir: UILabel!
    var secilensehirAdi = ""
    var secilensehirResmi = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSehir.text = secilensehirAdi
        resimSehir.image = secilensehirResmi
    }
}
