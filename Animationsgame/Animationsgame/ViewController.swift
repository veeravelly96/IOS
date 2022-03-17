//
//  ViewController.swift
//  Animationsgame
//
//  Created by Veeravelly,Sai Krishna on 3/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakemeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear:", imageOutlet.frame.origin.x)
        imageOutlet.image = UIImage(named: "hello")
        imageOutlet.frame.origin.x = view.frame.width
        happyOutlet.frame.origin.x = view.frame.width
        sadOutlet.frame.origin.x = view.frame.width
        angryOutlet.frame.origin.x = view.frame.width
        shakemeOutlet.frame.origin.x = view.frame.width
        
        
    }

    @IBAction func happyButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func sadButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func angryButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func shakemeButtonClicked(_ sender: UIButton) {
        var w = imageOutlet.frame.width
        w += 40
        
        var h = imageOutlet.frame.height
        h += 40
        
        var x = imageOutlet.frame.origin.x
        x += 20
        
        var y = imageOutlet.frame.origin.y
        y += 20
        
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        UIView.animate(withDuration: 1, delay: 0,usingSpringWithDamping: 0.2,initialSpringVelocity: 0, animations: {
            self.imageOutlet.frame = largerFrame
        } )
    }
    
    @IBAction func showButtonClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.center.x = self.view.center.x
            self.happyOutlet.center.x = self.view.center.x
            self.sadOutlet.center.x = self.view.center.x
            self.angryOutlet.center.x = self.view.center.x
            self.shakemeOutlet.center.x = self.view.center.x
            self.showOutlet.isEnabled = false;
        })
    }
    
    func animateImage(_ imageName: String){
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.imageOutlet.alpha = 0
        })
        
        UIView.animate(withDuration: 1, delay: 0.2, animations: {
            self.imageOutlet.alpha = 0
            self.imageOutlet.image = UIImage(named:imageName)
        })
    }
}

