//
//  ViewController2.swift
//  Cv
//
//  Created by Sri Priya Valli Yellepaddi on 31/01/20.
//  Copyright © 2020 Sri Priya Valli Yellepaddi. All rights reserved.
//

import UIKit



class ViewController2: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var pic: UIImageView!
    var vari = ""
    var bomma = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        labelText.text = vari
        pic.image = bomma
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
