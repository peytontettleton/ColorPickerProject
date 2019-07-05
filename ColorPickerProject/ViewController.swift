//
//  ViewController.swift
//  ColorPickerProject
//
//  Created by Peyton Tettleton on 7/5/19.
//  Copyright © 2019 Peyton Tettleton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //let colors = ["red","orange","yellow","green","blue","purple","brown"]
    
    let colors = [Colors(name: "Red", uiColor: UIColor.red),
    Colors(name: "Orange", uiColor: UIColor.orange),
    Colors(name: "Yellow", uiColor: UIColor.yellow),
    Colors(name: "Green", uiColor: UIColor.green),
    Colors(name: "Blue", uiColor: UIColor.blue),
    Colors(name: "Purple", uiColor: UIColor.purple),
    Colors(name: "Brown", uiColor: UIColor.brown)]
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = colors[row].name
        self.view.backgroundColor = colors[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        return colors[row].name
        
    }
}


