//
//  Numpad.swift
//  testtt
//
//  Created by living mobile on 14/1/2563 BE.
//  Copyright (c) 2563 living mobile. All rights reserved.
//

import UIKit

struct Numpad {
    
    //MARK: Use Cases
    struct ShowText {
        struct Request {
            var inputText : String?
            //VC->Interactor
        }
        
        struct Response {
            var outputText : String?
            //Inter->Pre
            
        }
        
        struct ViewModel {
            var showText : String?
            //Pre->VC
        }
    }
}
