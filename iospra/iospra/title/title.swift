//
//  title.swift
//  iospra
//
//  Created by 山田楓也 on 2019/05/26.
//  Copyright © 2019 Fuuya Yamada. All rights reserved.
//

import UIKit

class title: UIViewController {

    @IBOutlet weak var wview: UIView!
    @IBOutlet weak var wview2: UIView!
    @IBOutlet weak var wview3: UIView!
    @IBOutlet weak var wview4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        anime()
    }

    

    
    func anime(){
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat], animations: {
            self.wview.alpha -= 0.7
            self.wview.center.y -= 300.0
        }, completion: nil)
        UIView.animate(withDuration: 4.0, delay: 0.0, options: [.repeat], animations: {
            self.wview2.alpha -= 0.9
            self.wview2.center.y -= 800.0
        }, completion: nil)
        UIView.animate(withDuration: 6.0, delay: 0.0, options: [.repeat], animations: {
            self.wview3.alpha -= 0.6
            self.wview3.center.y -= 800.0
        }, completion: nil)
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat], animations: {
            self.wview4.alpha -= 0.7
            self.wview4.center.y -= 800.0
        }, completion: nil)
        UIView.animate(withDuration: 4.0, delay: 0.0, options: [.repeat], animations: {
            self.view5.alpha -= 0.8
            self.view5.center.y -= 800.0
        }, completion: nil)
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat], animations: {
            self.view6.alpha -= 0.7
            self.view6.center.y -= 800.0
        }, completion: nil)
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat], animations: {
            self.view7.alpha -= 0.6
            self.view7.center.y -= 800.0
        }, completion: nil)
    }
    
    @IBAction func tap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "Main")
        self.present(mainViewController, animated: true, completion: nil)
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



