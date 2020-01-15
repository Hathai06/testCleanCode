//
//  NumpadRouter.swift
//  testtt
//
//  Created by living mobile on 14/1/2563 BE.
//  Copyright (c) 2563 living mobile. All rights reserved.
//

import UIKit

class NumpadRouter:  NumpadDataPassing {
    private weak var viewController: NumpadViewController?
    var dataStore: NumpadDataStore?
    
    init(viewController: NumpadViewController) {
        self.viewController = viewController
    }
}

//MARK: Routable
extension NumpadRouter: NumpadRoutable {
    
}
