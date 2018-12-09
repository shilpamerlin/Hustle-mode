//
//  ViewController.swift
//  Hustle-mode
//
//  Created by Shilpa Joy on 2018-12-05.
//  Copyright © 2018 Shilpa Joy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var clHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var onLbl: UILabel!
    @IBOutlet weak var hustleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource : "hustle-on", ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }
        catch let error as NSError
        {
            print(error.description)
        }
        
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
        powerBtn.isHidden = true
        clHolder.isHidden = false
        darkBlueBG.isHidden = true
        player.play();
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
            })
            {
                (finished) in
                self.hustleLbl.isHidden = false
                self.onLbl.isHidden = false
            }
    }
    

}

