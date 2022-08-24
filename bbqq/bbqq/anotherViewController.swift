//
//  anotherViewController.swift
//  bbqq
//
//  Created by cumulations on 09/08/22.
//

import UIKit
import MediaPlayer

class anotherViewController: UIViewController {
        static let shared = ViewController2()
        var id = "view2"
        var m:data?
        override func viewDidLoad() {
            super.viewDidLoad()
            returnData.shared.fetchdata { Data in
                self.m = Data
                print(self.m)
            }
            print(m?.content)
            
        }

}
