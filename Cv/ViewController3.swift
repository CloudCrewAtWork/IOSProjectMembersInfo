//
//  ViewController3.swift
//  Cv
//
//  Created by Sri Priya Valli Yellepaddi on 03/02/20.
//  Copyright © 2020 Sri Priya Valli Yellepaddi. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        var variable = " "
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        label1.text = variable
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
