//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Hüseyin Kaya on 11.05.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //overrideUserInterfaceStyle = .light //Kullanıcı ne seçtiğinden bağımsız uygulanacaktır.
      
        
    }

    override func viewWillAppear(_ animated: Bool) {
        //kullanıcı darkmode kullanıyor mu kullanmıyor mu anlamak için
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white //tint başlıga ulasmak için
          
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) { //uygulama açıkken tercih değişirse de güncellenicek.
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white //tint başlıga ulasmak için
          
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
    
    

}

