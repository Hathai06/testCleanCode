//
//  NumpadViewController.swift
//  testtt
//
//  Created by living mobile on 14/1/2563 BE.
//  Copyright (c) 2563 living mobile. All rights reserved.
//

import UIKit

class NumpadViewController: UIViewController {
    
    @IBOutlet weak var textfieldTest: UITextField!
    @IBOutlet weak var labelTest: UILabel!
    //MARK: VIP Cycle
    var interactor: NumpadBusinessLogic!
    var router: (NumpadRoutable & NumpadDataPassing)!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setup()
    }
    
    @IBAction func buttonTest(_ sender: Any) {
        //เริ่มต้นuserกด
        //inputText คือต้องการให้ค่าinput เข้ามาเป็นตัวที่แสดงเป็น textfield
        let request = Numpad.ShowText.Request(inputText: textfieldTest.text)
        //ส่งค่า request ให้ Inter
        interactor.sendText(request: request)
//        interactor.sendText(text: textfieldTest.text)
    }
}


//MARK: Setup & Configuration
extension NumpadViewController {
    private func setup() {
        
    }
    
    private func configure() {
        NumpadConfiguration.shared.configure(self)
    }
}


//MARK: Displayable
extension NumpadViewController: NumpadDisplayable {
    func showText(viewModel: Numpad.ShowText.ViewModel) {
        self.labelTest.text = viewModel.showText
        
    }
    
    
}

