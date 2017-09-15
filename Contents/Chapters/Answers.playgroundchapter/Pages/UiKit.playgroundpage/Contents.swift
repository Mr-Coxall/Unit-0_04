// Created on: Jan-2017
// Created by: Mr. Coxall
// Created for: ICS3U
// This program is the UIKit solution for the Hello, World! program international

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var helloWorldLabel : UILabel!
    var englishButton : UIButton!
    var frenchButton : UIButton!
    var spanishButton : UIButton!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        englishButton = UIButton()
        englishButton.setTitle("English", for: .normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        englishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        frenchButton = UIButton()
        frenchButton.setTitle("French", for: .normal)
        frenchButton.titleLabel?.textAlignment = .center
        frenchButton.setTitleColor(.blue, for: .normal)
        frenchButton.addTarget(self, action: #selector(frenchText), for: .touchUpInside)
        view.addSubview(frenchButton)
        frenchButton.translatesAutoresizingMaskIntoConstraints = false
        frenchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        frenchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        spanishButton = UIButton()
        spanishButton.setTitle("Spanish", for: .normal)
        spanishButton.setTitleColor(.blue, for: .normal)
        spanishButton.addTarget(self, action: #selector(spanishText), for: .touchUpInside)
        view.addSubview(spanishButton)
        spanishButton.translatesAutoresizingMaskIntoConstraints = false
        spanishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        spanishButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        helloWorldLabel = UILabel()
        //helloWorldLabel.text = "Hello, World!"
        helloWorldLabel.textAlignment = .center
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo: frenchButton.bottomAnchor, constant: 20).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func englishText() {
        // show Hello, World! in English
        helloWorldLabel.text = "Hello, World!"
    }
    
    func frenchText() {
        // show Hello, World!, in French
        helloWorldLabel.text = "Bonjour le monde!"
    }
    
    func spanishText() {
        // show Hello, World!, in Spanish
        helloWorldLabel.text = "¡Hola Mundo!"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()