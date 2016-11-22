//
//  tipViewController.swift
//  tiptextfild1119
//
//  Created by heroshi on 2016/11/19.
//  Copyright © 2016年 heroshi. All rights reserved.
//

import UIKit

class tipViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var iguess1: UITextField!
    
    @IBOutlet weak var iguess2: UITextField!
    
    @IBOutlet weak var guesstime: UILabel!
    
    @IBOutlet weak var answerlabel: UILabel!
    
    @IBOutlet weak var hintlabel: UILabel!
    
    
    
    
    // range is 0 to 9
    
    //    var maxnumber:Int = 10000
    
    
    var hmtvalue:Int = 0
    
    
    var answervalue1:Int = 8
    var answervalue2:Int = 6

    
    var a11:Int = 0
    var a22:Int = 0
    var b12:Int = 0
    var b21:Int = 0
    

    
    @IBAction func cal(_ sender: AnyObject)
    {
        
        
        let answervalue1 = String(self.answervalue1)
        let answervalue2 = String(self.answervalue2)
        answerlabel.isHidden = false
        if iguess1.text == "" || iguess2.text == "" {
            answerlabel.text = "請輸入2個數字"
            hintlabel.text = "0 A 0 B"

                    }
        else {
            if ( self.iguess1.text == answervalue1  && self.iguess2.text != answervalue2 ) || ( self.iguess2.text == answervalue2  && self.iguess1.text != answervalue1 ) {
                hintlabel.text = "1 A 0 B"
            }
            else {
                if self.iguess1.text == answervalue2  && self.iguess2.text == answervalue1  {
                    hintlabel.text = "0 A 2 B"
                }
                else {
                    if ( self.iguess1.text == answervalue2  ) || ( self.iguess2.text == answervalue1  ) {
                        hintlabel.text = "0 A 1 B"
                                        }
                    else {
                        if self.iguess1.text != answervalue1 && self.iguess2.text != answervalue2{
                            hintlabel.text = "0 A 0 B"
                        }
                        else {
                            if self.iguess1.text == answervalue1 && self.iguess2.text == answervalue2 {
                                    self.answerlabel.text = "恭喜答對"
                                hintlabel.text = "2 A 2 B"
                            }
                        }
                    }
                }
            }
                guesstime.isHidden = false
                hintlabel.isHidden = false
                hmtvalue = self.hmtvalue + 1
                guesstime.text = "第\(hmtvalue)次"
            
            }
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


