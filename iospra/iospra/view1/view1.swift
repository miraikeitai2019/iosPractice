//
//  view1.swift
//  iospra
//
//  Created by 山田楓也 on 2019/05/25.
//  Copyright © 2019 Fuuya Yamada. All rights reserved.
//  Fix by Masamu Tobita
//

import UIKit

class view1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var label1: UILabel!
    var ans=0.0
    var one=0.0
    var fun=0.0
    var cou=0.0
    var pil=0.1
    var fun2=0.0
    
    func count(num: Double){
        if cou==0{
            ans=ans*10+num
        }else if cou==1{
            one=ans
            ans=num
            cou=0
        }else{
            ans=ans+pil*num
            pil=pil*0.1
        }
        label1.text = "\(ans)"
    }
    func funs(num: Double){
        fun=num
        cou=1
        pil=0.1
    }
    
    @IBAction func button7(_ sender: UIButton) {
        count(num:7)
    }
    @IBAction func button8(_ sender: UIButton) {
        count(num:8)
    }
    @IBAction func button9(_ sender: UIButton) {
        count(num:9)
    }
    @IBAction func button4(_ sender: UIButton) {
        count(num:4)
    }
    @IBAction func button5(_ sender: UIButton) {
        count(num:5)
    }
    @IBAction func button6(_ sender: UIButton) {
        count(num:6)
    }
    @IBAction func button1(_ sender: UIButton) {
        count(num:1)
    }
    @IBAction func button2(_ sender: UIButton) {
        count(num:2)
    }
    @IBAction func button3(_ sender: UIButton) {
        count(num:3)
    }
    @IBAction func button0(_ sender: UIButton) {
        count(num:0)
    }
    @IBAction func button_comma(_ sender: UIButton) {
        cou=2
    }
    @IBAction func button_equal(_ sender: UIButton) {
        if fun==1 {
            ans=one+ans
        }else if fun==2{
            ans=one-ans
        }else if fun==3{
            ans=one*ans
        }else if fun==4{
            ans=one/ans
        }
        fun=0
        label1.text = "\(ans)"
    }
    @IBAction func button_plus(_ sender: UIButton) {
        funs(num:1)
    }
    @IBAction func button_minus(_ sender: UIButton) {
        funs(num:2)
    }
    @IBAction func button_times(_ sender: UIButton) {
        funs(num:3)
    }
    @IBAction func button_divided(_ sender: UIButton) {
        funs(num:4)
    }
    @IBAction func button_per(_ sender: UIButton) {
        ans=ans/100.0
        label1.text = "\(ans)"
    }
    @IBAction func button_pm(_ sender: UIButton) {
        ans=ans*(-1)
        label1.text = "\(ans)"
    }
    @IBAction func button_ac(_ sender: UIButton) {
        ans=0
        cou=0
        pil=0.1
        label1.text = "\(ans)"
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
