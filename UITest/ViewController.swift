//
//  ViewController.swift
//  UITest
//
//  Created by ROSE on 2021/3/13.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myToggleChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            //print("紫色")
            view.backgroundColor = .purple
        }else if sender.selectedSegmentIndex == 1{
            //print("橘色")
            view.backgroundColor = .orange
        }else{
            //print("布朗")
            view.backgroundColor = .brown
        }
    }
    
    // Switch
    @IBAction func makeAChange(_ sender: UISwitch) {
        // 用isOn這個屬性，來測試目前開關的狀態
        if sender.isOn == true{
            //print("It's on")
            view.backgroundColor = .white
        }else{
            //print("It's off")
            view.backgroundColor = .black
        }
    }
    
    
    // slider
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func sliderChanged(_ sender: UISlider) {
        myLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func valueChanged(_ sender: UIPageControl) {
        print(sender.currentPage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

