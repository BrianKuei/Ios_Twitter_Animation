//
//  ViewController.swift
//  twitterAnime
//
//  Created by student on 2019/4/25.
//  Copyright © 2019年 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let twitterLogo = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        twitterLogo.image = UIImage(named: "Twitter_Logo_White_On_Image")
        twitterLogo.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        
        twitterLogo.center = view.center
        view.backgroundColor =  UIColor(red: 80/255, green: 160/255, blue: 230/255, alpha: 1)
        view.addSubview(twitterLogo)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.twitterLogo.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
            self.twitterLogo.center = self.view.center
            
        }) { (finished) in
            UIView.animate(withDuration: 1, animations: {
                self.twitterLogo.frame = CGRect(x: 0, y: 0, width: 10000, height: 10000)
                self.twitterLogo.center = self.view.center
                self.view.alpha = 0
            })
        }
    }


}

