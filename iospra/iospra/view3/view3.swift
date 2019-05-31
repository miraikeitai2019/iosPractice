//
//  view3.swift
//  iospra
//
//  Created by 山田楓也 on 2019/05/25.
//  Copyright © 2019 Fuuya Yamada. All rights reserved.
//
import UIKit

class view3: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var TButton: UIButton!
    
    var startTime: TimeInterval? = nil //Double型
    var timer = Timer() //止めた時に返す値を初期化
    var elapsedTime: Double = 0.0
 
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //start: true, stop: false, reset: false
        setButtonEnabled(start: true, stop: false, reset: false)
        // Do any additional setup after loading the view.
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//

    func setButtonEnabled(start: Bool, stop: Bool, reset: Bool){
        self.startButton.isEnabled = start
        self.stopButton.isEnabled = stop
        self.resetButton.isEnabled = reset
    }
    
    @objc func update(){
        //2001.1.1 00:00:00
        //        print(Date.timeIntervalSinceReferenceDate)
        if let startTime = self.startTime {
            let t: Double = Date.timeIntervalSinceReferenceDate - startTime + self.elapsedTime
            //経過時間　＝　今の基準日からの経過秒数　ー　startTime
            //        print(t)
            let min = Int(t / 60)
            let sec = Int(t) % 60
            let msec = Int((t - Double(min * 60) - Double(sec)) * 100.0) //ミリ秒
            self.timerLabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
        }
    }
    
    @IBAction func startTimer(_ sender: Any) {
        //start: false, stop: true, reset: false
        setButtonEnabled(start: false, stop: true, reset: false)
        
        self.startTime = Date.timeIntervalSinceReferenceDate
        self.timer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(self.update),
            userInfo: nil,
            repeats: true)
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        //start: true, stop: false, reset: true
        setButtonEnabled(start: true, stop: false, reset: true)
        
        if let startTime = self.startTime {
            self.elapsedTime += Date.timeIntervalSinceReferenceDate - startTime
        }
        self.timer.invalidate() //startTimerのTimer.schedulesTimerの返り値
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        //start: true, stop: false, reset: false
        setButtonEnabled(start: true, stop: false, reset: false)
        self.startTime = nil //リセットを押すと0になる
        self.timerLabel.text = "00:00:00"
        self.elapsedTime = 0.0
    }
    
    
    @IBAction func T(_ sender: Any) {
        
    }
    
//import UIKit
//
//class view3: UIViewController {
//
//    @IBOutlet weak var timerLabel: UILabel!
//    @IBOutlet weak var startButton: UIButton!
//    @IBOutlet weak var stopButton: UIButton!
//    @IBOutlet weak var resetButton: UIButton!
//    @IBOutlet weak var TButton: UIButton!
//
//    var startTime: TimeInterval? = nil //Double型
//    var timer = Timer() //止めた時に返す値を初期化
//    var elapsedTime: Double = 0.0
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        //start: true, stop: false, reset: false
//        setButtonEnabled(start: true, stop: false, reset: false)
//        // Do any additional setup after loading the view.
//    }
//
//    func setButtonEnabled(start: Bool, stop: Bool, reset: Bool){
//        self.startButton.isEnabled = start
//        self.stopButton.isEnabled = stop
//        self.resetButton.isEnabled = reset
//    }
//
//    @objc func update(){
//        //2001.1.1 00:00:00
//        //        print(Date.timeIntervalSinceReferenceDate)
//        if let startTime = self.startTime {
//            let t: Double = Date.timeIntervalSinceReferenceDate - startTime + self.elapsedTime
//            //経過時間　＝　今の基準日からの経過秒数　ー　startTime
//            //        print(t)
//            let min = Int(t / 60)
//            let sec = Int(t) % 60
//            let msec = Int((t - Double(sec)) * 100.0)//ミリ秒
//            self.timerLabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
//        }
//    }
//
//    @IBAction func startTimer(_ sender: Any) {
//        //start: false, stop: true, reset: false
//        setButtonEnabled(start: false, stop: true, reset: false)
//
//        self.startTime = Date.timeIntervalSinceReferenceDate
//        self.timer = Timer.scheduledTimer(
//            timeInterval: 0.01,
//            target: self,
//            selector: #selector(self.update),
//            userInfo: nil,
//            repeats: true)
//    }
//
//    @IBAction func stopTimer(_ sender: Any) {
//        //start: true, stop: false, reset: true
//        setButtonEnabled(start: true, stop: false, reset: true)
//
//        if let startTime = self.startTime {
//            self.elapsedTime += Date.timeIntervalSinceReferenceDate - startTime
//        }
//        self.timer.invalidate() //startTimerのTimer.schedulesTimerの返り値
//    }
//
//    @IBAction func resetTimer(_ sender: Any) {
//        //start: true, stop: false, reset: false
//        setButtonEnabled(start: true, stop: false, reset: false)
//
//        self.startTime = nil //リセットを押すと0になる
//        self.timerLabel.text = "00:00:00"
//        self.elapsedTime = 0.0
//    }
//
//
//
//
//    @IBAction func T(_ sender: Any) {
//
//    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
    */

}
