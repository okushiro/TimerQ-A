//
//  Question3ViewController.swift
//  SwipeQ&A
//
//  Created by 奥城健太郎 on 2019/02/27.
//  Copyright © 2019 奥城健太郎. All rights reserved.
//

import UIKit

class Question3ViewController: UIViewController, UIGestureRecognizerDelegate {

    let userDefaults = UserDefaults.standard
    var count3:Double = 0
    var timer = Foundation.Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UpdateCount), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTouchLike3Btn(_ sender: Any) {
        userDefaults.set("好き", forKey: "answer3")
        timer.invalidate()
        userDefaults.set(count3, forKey: "count3")
        present()
    }
    
    @IBAction func didTouchUnike3Btn(_ sender: Any) {
        userDefaults.set("嫌い", forKey: "answer3")
        timer.invalidate()
        userDefaults.set(count3, forKey: "count3")
        present()
    }
    
    func present(){
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "result") as! ResultViewController
        nextView.modalTransitionStyle = .crossDissolve
        self.present(nextView, animated: true, completion: nil)
    }
    
    @objc func UpdateCount(){
        count3 += 0.01
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
