//
//  Question2ViewController.swift
//  SwipeQ&A
//
//  Created by 奥城健太郎 on 2019/02/27.
//  Copyright © 2019 奥城健太郎. All rights reserved.
//

import UIKit

class Question2ViewController: UIViewController, UIGestureRecognizerDelegate {

    let userDefaults = UserDefaults.standard
    var count2:Double = 0
    var timer = Foundation.Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UpdateCount), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTouchLike2Btn(_ sender: Any) {
        userDefaults.set("好き", forKey: "answer2")
        timer.invalidate()
        userDefaults.set(count2, forKey: "count2")
        present()
    }
    
    @IBAction func didTouchUnlike2Btn(_ sender: Any) {
        userDefaults.set("嫌い", forKey: "answer2")
        timer.invalidate()
        userDefaults.set(count2, forKey: "count2")
        present()
    }
    
    func present(){
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "question3") as! Question3ViewController
        nextView.modalTransitionStyle = .crossDissolve
        self.present(nextView, animated: true, completion: nil)
    }
    
    @objc func UpdateCount(){
        count2 += 0.01
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
