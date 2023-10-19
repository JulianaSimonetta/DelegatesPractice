//
//  ViewController.swift
//  delegatePracticas
//
//  Created by juliana simonetta on 11/10/2023.
//

import UIKit

class baseScreen: UIViewController, HogwartsHouseSelectionDelegate {
    

    @IBOutlet weak var baseImage: UIImageView!
    @IBOutlet weak var selectionButton: UIButton!
    @IBOutlet weak var selectionName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.baseImage.image = UIImage(named: "hogwartsLogo")!
    }

    
    @IBAction func bottonPressed(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScene") as! SelectionScene
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    
    func didMakeChoise(color: UIColor, name: String, image: String) {
        selectionName.text = name
        selectionName.textColor = .black
        view.backgroundColor = color
        self.baseImage.image = UIImage(named: image)
    }
    
}

