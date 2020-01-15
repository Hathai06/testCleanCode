//
//  NumpadProtocols.swift
//  testtt
//
//  Created by living mobile on 14/1/2563 BE.
//  Copyright (c) 2563 living mobile. All rights reserved.
//

import Foundation

//MARK: ViewController
protocol NumpadDisplayable: class {
    func showText(viewModel: Numpad.ShowText.ViewModel)
}

//MARK: Interactor
protocol NumpadBusinessLogic {
    //ส่ง text ไปให้ Inter
    //func sendText(text:String?)
     func sendText(request : Numpad.ShowText.Request)
}

//MARK: Presenter
protocol NumpadPresentable {
    func outputText(response : Numpad.ShowText.Response)
    
}

//MARK: Routable
protocol NumpadRoutable {
    
}

//MARK: DataStore
protocol NumpadDataStore {
    
}

//MARK: DataPassing
protocol NumpadDataPassing {
    var dataStore: NumpadDataStore? { get set }
}
