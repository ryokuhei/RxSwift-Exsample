//
//  NextViewController.swift
//  TestRxSwift
//
//  Created by ryoku on 2017/08/11.
//  Copyright © 2017 ryoku. All rights reserved.
//

import Foundation
import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("next view did load")

        let backButton = UIBarButtonItem(title: "Back2", style: UIBarButtonItemStyle.plain, target: self.backButton, action: #selector(goBefore))
        self.navigationItem.backBarButtonItem = backButton
    }

    func goBefore() {
        print("goBefore")
//        self.navigationController?.popViewController(animated: true)

        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        let viewController = storyboard.instantiateInitialViewController()
        present(viewController!, animated: true, completion: nil)

    }

}
