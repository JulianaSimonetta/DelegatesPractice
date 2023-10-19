//
//  selectionScreen.swift
//  delegatePracticas
//
//  Created by juliana simonetta on 11/10/2023.
//

import Foundation
import UIKit

class SelectionScene: UIViewController{
    
    var selectionDelegate : HogwartsHouseSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonSelected(_ sender: UIButton) {
        print(sender)
        if (sender.titleLabel?.text == "Griffindor"){
            selectionDelegate.didMakeChoise(color: .red, name: "Griffindor", image: "gryffindor")
        } else if (sender.titleLabel?.text! == "Hufflepuf"){
            selectionDelegate.didMakeChoise(color: .yellow, name: "Hufflepuf", image: "hufflepuf")
        } else if (sender.titleLabel?.text! == "Slytherin"){
            selectionDelegate.didMakeChoise(color: .green, name: "Slytherin", image: "slytherin")
        } else {
            selectionDelegate.didMakeChoise(color: .blue, name: "Ravenclaw", image: "ravenclaw")
        }
        dismiss(animated: true)
    }
    
}

//MARK: - protocol
protocol HogwartsHouseSelectionDelegate{
    func didMakeChoise(color: UIColor, name: String, image: String)
}
