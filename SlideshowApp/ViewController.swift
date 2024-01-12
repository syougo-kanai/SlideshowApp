//
//  ViewController.swift
//  SlideshowApp
//
//  Created by MTBS049 on 2024/01/10.
//

import UIKit

class ViewController: UIViewController {
   
    
    var randomcount = 0
    @IBOutlet weak var cdam: UIButton!
    @IBAction func vdam(_ sender: Any) {
        if clik == 1 {
        }else if randomcount == 0 {
            randomcount = 1
            cdam.setTitleColor(UIColor.systemRed, for: .normal)
            }else{
            randomcount = 0
            cdam.setTitleColor(UIColor.systemCyan, for: .normal)
            }
        
    }
    
    var returncount = 0
    @IBOutlet weak var cturn: UIButton!
    @IBAction func vturn (_ sender: Any) {
        if clik == 1 {
        }else if returncount == 0 {
            returncount = 1
            cturn.setTitleColor(UIColor.systemRed, for: .normal)
            
        }else{
            returncount = 0
            cturn.setTitleColor(UIColor.systemCyan, for: .normal)
            
        }
    }
    
    @IBOutlet weak var icon: UIImageView!{
        didSet{
            let gesture = UITapGestureRecognizer(target: self, action: #selector(tapzoom))
                        icon.addGestureRecognizer(gesture)
                        icon.isUserInteractionEnabled = true        }
    }
       
    @objc func tapzoom() {
        print("OK")
        if clik == 0 {
        
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let nextVC =  storyboard.instantiateViewController(withIdentifier: "zoom") as! tweViewController
            nextVC.znumber = iconnumber
            
            navigationController?.pushViewController(nextVC, animated: false)
            

        }
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
       }
    @IBOutlet weak var climButton: UIButton!
    
    @IBOutlet weak var larrow: UIButton!
    
    @IBOutlet weak var rarrow: UIButton!
    
    let imageicon = ["icon","icon1","icon2"]
    var iconnumber = 0
    
    var timer:Timer!
    var timer_sec:Float = 0
    var clik:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let number = imageicon[iconnumber]
        icon.image = UIImage(named: number)
        
    
    
}
    @objc func updateTimer(_ timer: Timer) {
        self.timer_sec += 1
        if randomcount == 1 {
            
          if iconnumber == 0 && timer_sec == 2 {
              let zdam:[Int] = [1,2]
              iconnumber = zdam.randomElement() ?? 0
              timer_sec = 0
              
          }else if iconnumber == 1 && timer_sec == 2 {
              let zdam:[Int] = [0,2]
              iconnumber = zdam.randomElement() ?? 0
              timer_sec = 0
              
          }else if iconnumber == 2 && timer_sec == 2 {
              let zdam:[Int] = [0,1]
              iconnumber = zdam.randomElement() ?? 0
              timer_sec = 0
              
          }
    }else if returncount == 0{
            
            if timer_sec == 2.0 && iconnumber == 0 {
                iconnumber = 1
                timer_sec = 0
            }else if timer_sec == 2.0 && iconnumber == 1 {
                iconnumber = 2
                timer_sec = 0
            }else if timer_sec == 2.0 && iconnumber == 2 {
                iconnumber = 0
                timer_sec = 0
            }
            
        }else{
            if timer_sec == 2.0 && iconnumber == 0 {
                iconnumber = 2
                timer_sec = 0
            }else if timer_sec == 2.0 && iconnumber == 2 {
                iconnumber = 1
                timer_sec = 0
            }else if timer_sec == 2.0 && iconnumber == 1 {
                iconnumber = 0
                timer_sec = 0
            }
        }
        let number = imageicon[iconnumber]
        icon.image = UIImage(named: number)
        print(timer_sec)
        
    }
    @IBAction func start(_ sender: Any) {
        if self.timer == nil && clik == 0 {
                    self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            let Sicon = UIImage(systemName: "square")
            climButton.setImage(Sicon, for: .normal)
            clik = 1
            larrow.setTitleColor(UIColor.lightGray, for: .normal)
            rarrow.setTitleColor(UIColor.lightGray, for: .normal)
         //   cturn.setTitleColor(UIColor.lightGray, for: .normal)
         //   cdam.setTitleColor(UIColor.lightGray, for: .normal)
        }else if self.timer != nil && clik == 1 {
            self.timer.invalidate()
            self.timer = nil
            timer_sec = 0
            let Sicon = UIImage(systemName: "arrowtriangle.right")
            climButton.setImage(Sicon, for: .normal)
            clik = 0
            larrow.setTitleColor(UIColor.systemCyan, for: .normal)
            rarrow.setTitleColor(UIColor.systemCyan, for: .normal)
         //   cturn.setTitleColor(UIColor.systemCyan, for: .normal)
         //   cdam.setTitleColor(UIColor.systemCyan, for: .normal)
            }
    }
    @IBAction func back(_ sender: Any) {
        if clik == 1 {
        }else if iconnumber == 0 {
            iconnumber = 2
        }else if iconnumber == 2 {
            iconnumber = 1
        }else if iconnumber == 1 {
            iconnumber = 0
        }
        let number = imageicon[iconnumber]
        icon.image = UIImage(named: number)
    }
    
    @IBAction func go(_ sender: Any) {
        if clik == 1 {
        }else if iconnumber == 0 {
            iconnumber = 1
        }else if iconnumber == 1 {
            iconnumber = 2
        }else if iconnumber == 2 {
            iconnumber = 0
        }
        let number = imageicon[iconnumber]
        icon.image = UIImage(named: number)
    }
    

}

