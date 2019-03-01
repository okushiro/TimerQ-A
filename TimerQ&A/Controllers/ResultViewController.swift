//
//  ResultViewController.swift
//  SwipeQ&A
//
//  Created by 奥城健太郎 on 2019/02/27.
//  Copyright © 2019 奥城健太郎. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    
    @IBOutlet weak var answer1Label: UILabel!
    @IBOutlet weak var answer2Label: UILabel!
    @IBOutlet weak var answer3Label: UILabel!

    @IBOutlet weak var count1Label: UILabel!
    @IBOutlet weak var count2Label: UILabel!
    @IBOutlet weak var count3Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answer1Label.text = (userDefaults.object(forKey: "answer1") as! String)
        answer2Label.text = (userDefaults.object(forKey: "answer2") as! String)
        answer3Label.text = (userDefaults.object(forKey: "answer3") as! String)
        
        count1Label.text = "\(String(format: "%.2f",userDefaults.double(forKey: "count1"))) 秒"
        count2Label.text = "\(String(format: "%.2f",userDefaults.double(forKey: "count2"))) 秒"
        count3Label.text = "\(String(format: "%.2f",userDefaults.double(forKey: "count3"))) 秒"

        // Do any additional setup after loading the view.
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
