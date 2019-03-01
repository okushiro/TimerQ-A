//
//  Question1ViewController.swift
//  SwipeQ&A
//
//  Created by 奥城健太郎 on 2019/02/27.
//  Copyright © 2019 奥城健太郎. All rights reserved.
//

import UIKit

class Question1ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let userDefaults = UserDefaults.standard
    var count1:Double = 0
    var timer = Foundation.Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UpdateCount), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTouchLike1Btn(_ sender: Any) {
        userDefaults.set("好き", forKey: "answer1")
        timer.invalidate()
        userDefaults.set(count1, forKey: "count1")
        present()
    }
    
    @IBAction func didTouchUnlike1Btn(_ sender: Any) {
        userDefaults.set("嫌い", forKey: "answer1")
        timer.invalidate()
        userDefaults.set(count1, forKey: "count1")
        present()
    }
    
    func present(){
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "question2") as! Question2ViewController
        nextView.modalTransitionStyle = .crossDissolve
        self.present(nextView, animated: true, completion: nil)
    }
    
    @objc func UpdateCount(){
        count1 += 0.01
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
