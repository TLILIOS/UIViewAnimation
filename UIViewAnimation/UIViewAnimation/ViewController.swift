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
    
    @IBAction func pressBtn1ToAnimate(_ sender: UIButton) {
        animateButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateItems()
    }
    
    func animateItems() {
        UIView.animate(withDuration: 2) {
            self.btnFirst.alpha = 1
            self.btnSecond.alpha = 1
            self.btnThird.alpha = 1
            self.btnFourth.alpha = 1
        }
        UIView.animate(withDuration: 2) {
            self.btnFirst.center.y += 50
            self.btnSecond.center.y += 50
            self.btnThird.center.y += 50
            self.btnFourth.center.y += 50
        } completion: { _ in
            self.animateButton()
        }

        UIView.animate(withDuration: 1, delay: 2, options: [.autoreverse, .repeat], animations: {
            //self.imgHeart.alpha = 0
            self.imgHeart.frame = CGRect(x: self.imgHeart.frame.minX - 25, y: self.imgHeart.frame.minY - 25, width: self.imgHeart.frame.width + 50, height: self.imgHeart.frame.height + 50)
        }, completion: nil)
        }
    func animateButton() {
        UIView.animate(withDuration: 1) {
            self.btnFirst.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
        } completion: { completed in
            if completed {
                UIView.animate(withDuration: 1) {
                    self.btnFirst.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
                
            }
        }

        UIView.animate(withDuration: 0.5) {
            self.btnSecond.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1.2)
        } completion: { completed in
            if completed {
                UIView.animate(withDuration: 0.5) {
                    self.btnSecond.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
            }
            
        }
        UIView.animate(withDuration: 0.8) {
            self.btnThird.layer.transform = CATransform3DMakeScale(1.6, 1.6, 1.6)
        } completion: { completed in
            if completed {
                UIView.animate(withDuration: 0.8) {
                    self.btnThird.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
            }
        }
        UIView.animate(withDuration: 1.2) {
            self.btnFourth.layer.transform = CATransform3DMakeScale(1.4, 1.4, 1.4)
        } completion: { completed in
            if completed {
                UIView.animate(withDuration: 1.2) {
                    self.btnFourth.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
                
            }
        }
    }
  
    }


