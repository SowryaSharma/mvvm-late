//
//  ViewController2.swift
//  bbqq
//
//  Created by cumulations on 17/08/22.
//

import UIKit

class ViewController2: UIViewController {
    static let shared = ViewController2()
    var id = "view2"
    var m:data?
    override func viewDidLoad() {
        super.viewDidLoad()
        returnData.shared.fetchdata { data in
            self.m = data
        }
        print(m?.content)
        
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
