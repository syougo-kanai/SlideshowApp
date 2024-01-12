//
//  tweViewController.swift
//  SlideshowApp
//
//  Created by MTBS049 on 2024/01/11.
//

import UIKit

class tweViewController: UIViewController{
    
    @IBOutlet weak var zoomicon: UIImageView!
    

 
    
   // let zoomicon = UIImageView()
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    let imageicon = ["icon","icon1","icon2"]
    var znumber:Int = 0

    private let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let number = imageicon[znumber]
        zoomicon.image = UIImage(named: number)
       // zoomicon.frame = CGRect(x:screenWidth, y:screenHeight,width:1000, height:1000)
       // zoomicon.center = CGPoint(x: 200,  y: 390)
        //  screenWidth = self.view.bounds.width
      //          screenHeight = self.view.bounds.height
     
      //  let number = imageicon[znumber]
      //  zoomicon.image = UIImage(named: number)
      //
      //

    }
    @IBAction func puls(_ sender: Any) {
        navigationController?.popViewController(animated: false)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
