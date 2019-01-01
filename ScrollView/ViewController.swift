//
//  ViewController.swift
//  ScrollView
//
//  Created by Andrii on 1/1/19.
//  Copyright © 2019 Andrii. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    var songName = String()
    var audioPath = Bundle.main.path(forResource: "1", ofType: "mp3")

    @IBOutlet weak var ButtonSikuraOutlet: UIButton!
    @IBOutlet weak var ButtonScaryOutlet: UIButton!
    @IBOutlet weak var ButtonSomebodyOutlet: UIButton!
    @IBOutlet weak var ButtonShitOutlet: UIButton!
    @IBOutlet weak var ButtonDohuaOutlet: UIButton!
    @IBOutlet weak var ButtonHamletOutlet: UIButton!
    @IBOutlet weak var StopButtonOutlet: UIButton!
    @IBOutlet weak var OnceMoreButtonOutlet: UIButton!
    
    
    @IBAction func ButtonSikura(_ sender: UIButton) {
        audioPath = Bundle.main.path(forResource: "1", ofType: "mp3")
        viewDidLoad()
        player.play()
    }
    
    @IBAction func ButtonScary(_ sender: UIButton) {
        audioPath = Bundle.main.path(forResource: "2", ofType: "mp3")
        viewDidLoad()
        player.play()
    }
    
    @IBAction func ButtonSomebody(_ sender: UIButton) {
        audioPath = Bundle.main.path(forResource: "3", ofType: "mp3")
        viewDidLoad()
        player.play()
    }
    
    @IBAction func ButtonShit(_ sender: UIButton) {
        audioPath = Bundle.main.path(forResource: "4", ofType: "mp3")
        viewDidLoad()
        player.play()
    }
    
    @IBAction func ButtonDohua(_ sender: UIButton) {
        audioPath = Bundle.main.path(forResource: "7", ofType: "mp3")
        viewDidLoad()
        player.play()
    }
    @IBAction func ButtonHamlet(_ sender: UIButton) {
        audioPath = Bundle.main.path(forResource: "6", ofType: "mp3")
        viewDidLoad()
        player.play()
    }
    
    
    @IBAction func ButtonStop(_ sender: UIButton) {
        player.stop()
    }
    @IBAction func OnceMoreButton(_ sender: UIButton) {
        player.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonSikuraOutlet.layer.cornerRadius = 15
        ButtonScaryOutlet.layer.cornerRadius = 15
        ButtonSomebodyOutlet.layer.cornerRadius = 15
        ButtonShitOutlet.layer.cornerRadius = 15
        ButtonDohuaOutlet.layer.cornerRadius = 15
        ButtonHamletOutlet.layer.cornerRadius = 15
        StopButtonOutlet.layer.cornerRadius = 15
        OnceMoreButtonOutlet.layer.cornerRadius = 15
        
        
        do{
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }catch{
            //ERRORS
        }
    }
    
}

