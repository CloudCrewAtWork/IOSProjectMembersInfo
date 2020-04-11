//
//  ViewController.swift
//  Cv
//
//  Created by Sri Priya Valli Yellepaddi on 31/01/20.
//  Copyright © 2020 Sri Priya Valli Yellepaddi. All rights reserved.
//

import UIKit
var array = ["Priya","Sahithi","Anurag","Charan"]
var array1 = ["kishore","sahas","hemanth","suraj"]
var images = [#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "image4"),#imageLiteral(resourceName: "image5")]
var images1 = [#imageLiteral(resourceName: "image6"),#imageLiteral(resourceName: "image7"),#imageLiteral(resourceName: "image8"),#imageLiteral(resourceName: "image9")]

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{

    @IBOutlet weak var collectionView2: UICollectionView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView2.delegate = self
        collectionView2.dataSource = self
                // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == collectionView2)
        {
            return array1.count
        }
        else{
            return array.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == collectionView2)
        {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell2
            cell1.label1.text = String(indexPath.row )
            cell1.picture1.image = images1[indexPath.row]
            return cell1
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
            cell.label.text = String(indexPath.row)
            cell.picture.image = images[indexPath.row]
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(collectionView == collectionView2)
        {
            let obj = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2
            obj?.vari = array1[indexPath.row]
            obj?.bomma = images1[indexPath.row]; self.navigationController?.pushViewController(obj!, animated: true)
        }
        else{
            let obj1 = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2
            obj1?.vari = array[indexPath.row]
            obj1?.bomma = images[indexPath.row];
            self.navigationController?.pushViewController(obj1!, animated: true)
        }
    }
    
    
    
    
    
//    func collectionView2(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return array1.count
//    }
//
//    func collectionView2(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell2
//        cell1.label1.text = String(indexPath.row + 1)
//        return cell1
//    }
//
//  func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let obj1 = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as? ViewController3
//        obj1.variable = array1[indexPath.row]
//        self.navigationController?.pushViewController(obj1!, animated: true)
//
//    }


}

