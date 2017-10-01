//
//  TestViewModel.swift
//  TestRxSwift
//
//  Created by ryoku on 2017/08/07.
//  Copyright © 2017 ryoku. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public struct TestViewModel {

    var nameText = Variable<String?>("")
    var passText = Variable<String?>("")
    var isValid: Observable<Bool> {
        return Observable.combineLatest(self.nameText.asObservable(), self.passText.asObservable()) {
            (name, pass) in
            return (name?.characters.count)! > 0 && (pass?.characters.count)! > 0
        }
    }
}
