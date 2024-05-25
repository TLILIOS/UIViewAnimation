//
//  ViewController.swift
//  UIViewAnimation
//
//  Created by HTLILI on 24/05/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnFirst: UIButton!
    @IBOutlet weak var btnSecond: UIButton!
    @IBOutlet weak var btnThird: UIButton!
    @IBOutlet weak var btnFourth: UIButton!
    @IBOutlet weak var imgHeart: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFirst.alpha = 0
        btnSecond.alpha = 0
        btnThird.alpha = 0
        btnFourth.alpha = 0
        
    }

    override func viewDidAppear(_ animated: Bool) {
        animateItems()
    }
    
    func animateItems() {
        UIView.animate(withDuration: 1.5) {
            self.btnFirst.alpha = 1
            self.btnSecond.alpha = 1
            self.btnThird.alpha = 1
            self.btnFourth.alpha = 1
        }
        UIView.animate(withDuration: 1.5) {
            self.btnFirst.center.y += 50
            self.btnSecond.center.y += 50
            self.btnThird.center.y += 50
            self.btnFourth.center.y += 50
        } completion: { _ in
            
        }

    }

    

}

