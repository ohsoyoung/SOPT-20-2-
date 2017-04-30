//
//  VC3.swift
//  2semina
//
//  Created by 오소영 on 2017. 4. 8..
//  Copyright © 2017년 오소영. All rights reserved.
//

import UIKit

class VC3 : UIViewController {
    @IBOutlet var fieldTxt: UITextField!
    
    var txt3 : String?
    
    @IBAction func presentBtn(_ sender: Any) {
        
        //옵셔널 바인딩으로 (위와 다른방법)
        
        guard let vc4 = storyboard?.instantiateViewController(withIdentifier: "VC4") as? VC4 else{
                return
        }

        vc4.txt4 = fieldTxt.text
    
        present(vc4, animated: true, completion: nil)
        
        
        //**vc4에서 버튼 하나 만들어서 그안에서 dismiss함수를 호출하면 그 버튼눌렀을 때 뒤로 갈수있음!
    }
    
    @IBAction func pushBtn(_ sender: Any) {
        if let vc4 = storyboard?.instantiateViewController(withIdentifier: "VC4") as? VC4 {
            vc4.txt4 = txt3
        navigationController?.pushViewController(vc4, animated: true)
        }

    }
    
}
