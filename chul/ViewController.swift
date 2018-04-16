//
//  ViewController.swift
//  chul
//
//  Created by D7703_08 on 2018. 4. 16..
//  Copyright © 2018년 D7703_08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonPressed(_ sender: Any) {
      let myAlert = UIAlertController(title: "알림",message: "설정된 시간이 되었습니다!!", preferredStyle: . alert)
        
        //세번째 인자를 클로져 사용
        //후행 클로져(Trailing closure)
        
        let okAction = UIAlertAction(title: "종료", style: .default, handler:{ (action: UIAlertAction) ->Void in
            self.view.backgroundColor = UIColor.green
   
        })
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler:
            { (action: UIAlertAction) ->Void in
        self.view.backgroundColor = UIColor.blue
        
        })
        let testAction = UIAlertAction(title: "테스트", style: .default, handler: nil)
        
        myAlert.addAction(testAction)
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        present(myAlert, animated: true, completion:  nil)
        
    
        
    }
    
}

