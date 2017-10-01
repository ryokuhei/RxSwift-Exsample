//
//  ViewController.swift
//  TestRxSwift
//
//  Created by ryoku on 2017/08/06.
//  Copyright © 2017 ryoku. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    let disposeBag = DisposeBag()
    let viewModel = TestViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        let nameText = self.nameText.rx.text
        nameText.bind(to: viewModel.nameText).disposed(by: disposeBag)

        let passText = self.passText.rx.text
        passText.bind(to: viewModel.passText).disposed(by: disposeBag)

        viewModel.isValid.asDriver(onErrorDriveWith: Driver.empty()).map {$0}.drive(self.loginButton.rx.isEnabled).addDisposableTo(disposeBag)

        loginButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc private func buttonPressed() {

        print("button pressed")

        let storyboard = UIStoryboard(name: "Next", bundle:nil)
        let viewController = storyboard.instantiateInitialViewController()
        present(viewController!, animated: true, completion: nil)

    }

}
