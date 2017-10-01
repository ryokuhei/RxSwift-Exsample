//
//  ViewController.swift
//  RxSwiftExample
//
//  Created by ryoku on 2017/08/05.
//  Copyright © 2017 ryoku. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testLabel.text = "test"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
