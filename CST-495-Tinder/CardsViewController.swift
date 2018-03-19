//
//  ViewController.swift
//  CST-495-Tinder
//
//  Created by Samuel on 3/18/18.
//  Copyright © 2018 Samuel. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    var cardInitialCenter: CGPoint!
    @IBOutlet weak var cardImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didPanImage(_ sender: UIPanGestureRecognizer) {
        let translate = sender.translation(in: view)
        let velocity = sender.velocity(in: view)
        
        if sender.state == .began{
            cardInitialCenter = self.cardImageView.center
        }
        
        else if sender.state == .changed{
            self.cardImageView.center = CGPoint(x: cardInitialCenter.x + translate.x, y: cardInitialCenter.y + translate.y)
            self.cardImageView.transform = CGAffineTransform(rotationAngle: translate.x / 20 * (CGFloat.pi / 180.0))
            print("Translate x: \(translate.x)")
        }
        
        else if sender.state == .ended{
            
            if(translate.x > 100){
                UIView.animate(withDuration: 0.25, animations: {
                    self.cardImageView.transform = self.cardImageView.transform.translatedBy(x: 400, y: 0)
                }, completion: { (done) in
                    self.cardImageView.removeFromSuperview()
                })
            }
            else if(translate.x < -100){
                UIView.animate(withDuration: 0.25, animations: {
                    self.cardImageView.transform = self.cardImageView.transform.translatedBy(x: -400, y: 0)
                }, completion: { (done) in
                    self.cardImageView.removeFromSuperview()
                })
            }
            
            else{
                UIView.animate(withDuration: 0.4, animations: {
                    self.cardImageView.center = self.cardInitialCenter
                    self.cardImageView.transform = CGAffineTransform.identity
                }, completion: { (done) in
                    
                })
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

