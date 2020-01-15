//
//  NumpadInteractor.swift
//  testtt
//
//  Created by living mobile on 14/1/2563 BE.
//  Copyright (c) 2563 living mobile. All rights reserved.
//

import Foundation

class NumpadInteractor: NumpadDataStore {
    var presenter: NumpadPresenter
    var worker: NumpadWorker
    
    init(presenter: NumpadPresenter) {
        self.presenter = presenter
        worker = NumpadWorker()
    }
}

//MARK: BusinessLogic
extension NumpadInteractor: NumpadBusinessLogic {
    //    รับค่า request จาก protocal
    //    ควรเป็นชื่อตาม numpad
    func sendText(request: Numpad.ShowText.Request) {
        //กลับไปที่ VC ไปนำค่าที่ต้องการแสดง ส่งมาให้ Inter
        
        //ต่อstring ที่ worker
        let text = worker.appendString(inputText: request.inputText)
        
        
        //        let response = Numpad.ShowText.Request(inputText: textfieldTest.text)
        //        interactor.sendText(request: request)
        let response = Numpad.ShowText.Response(outputText: text)
        
        presenter.outputText(response: response)
        
    }
}
