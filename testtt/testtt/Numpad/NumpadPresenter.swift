//
//  NumpadPresenter.swift
//  testtt
//
//  Created by living mobile on 14/1/2563 BE.
//  Copyright (c) 2563 living mobile. All rights reserved.
//

import UIKit

class NumpadPresenter {
    private weak var displayable: NumpadDisplayable?
    
    init(displayable: NumpadDisplayable) {
        self.displayable = displayable
    }
}

//MARK: Presentable
extension NumpadPresenter: NumpadPresentable {
    func outputText(response: Numpad.ShowText.Response) {
//        let request = Numpad.ShowText.Request(inputText: textfieldTest.text)
//               interactor.sendText(request: request)
        let viewModel = Numpad.ShowText.ViewModel(showText: response.outputText)
        displayable?.showText(viewModel: viewModel)
    }
    
    
}
