//
//  ViewController.swift
//  BilalErenUnal_InnovaBootcamp_Odev5
//
//  Created by Eren on 27.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    var ilkSayi : String = ""

    var toplam : Int = 0
    
    var sayiGirdiMi : Bool = false

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sonucLabel.text = "0"
    }

    @IBAction func sayiBasildi(_ sender: UIButton) {
        let sayi = String(sender.tag)
                
        if sayiGirdiMi {
            ilkSayi += sayi
        } else {
            ilkSayi = sayi
            sayiGirdiMi = true
        }
        sonucLabel.text = ilkSayi
            
    }
    
    @IBAction func toplamaButonu(_ sender: UIButton) {
        if let sayi = Int(ilkSayi) {
            toplam += sayi
        }
        
        ilkSayi = ""
        sayiGirdiMi = false
    }
    
    @IBAction func esittirBasildi(_ sender: Any) {
        if let sayi = Int(ilkSayi) {
            toplam += sayi
        }
                
        sonucLabel.text = String(toplam)
        ilkSayi = ""
        toplam = 0
        sayiGirdiMi = false
    }
    
    @IBAction func temizleButton(_ sender: Any) {
        ilkSayi = ""
        toplam = 0
        sonucLabel.text = "0"
        sayiGirdiMi = false
           
    }
    
    
}

