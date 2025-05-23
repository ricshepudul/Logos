//
//  ViewController.swift
//  Logos
//
//  Created by HPro2 on 9/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    var logos = ["android", "apple", "instagram", "linkedin", "pinterest", "playstation", "steam", "twitter", "wikipedia", "youtube", "bluetooth", "chrome", "dropbox", "linux", "olympics", "paypal", "skype", "soundcloud", "windows", "xbox"]
    var score = 0
    var correctIndex = 0
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        var acTitle: String
        if sender.tag == correctIndex {
            score += 1
            acTitle = "Correct!"
        } else {
            score -= 1
            acTitle = "Wrong!"
        }
        let ac = UIAlertController(title: acTitle, message: "Your score is \(score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: nextLogo))
        present(ac, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextLogo(action: nil)
    }
    
    func nextLogo(action: UIAlertAction!) {
        logos.shuffle()
        button0.setImage(UIImage(named: logos[0]), for: .normal)
        button1.setImage(UIImage(named: logos[1]), for: .normal)
        button2.setImage(UIImage(named: logos[2]), for: .normal)
        button3.setImage(UIImage(named: logos[3]), for: .normal)
        correctIndex = Int.random(in: 0...3)
        title = logos[correctIndex].uppercased()
    }


}

