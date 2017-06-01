//
//  ViewController.swift
//  Hustlemode
//
//  Created by Cassiel Hilbe on 29.05.17.
//  Copyright © 2017 Cassiel Hilbe. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "MoneyTrees", ofType: "mp3")!))
        audioPlayer.prepareToPlay()
            
         var audioSession = AVAudioSession.sharedInstance()
            
            do{
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch{
                
            }
            
        }
     
        catch{
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Play(_ sender: AnyObject) {
        
        audioPlayer.play()
        
    }

    @IBAction func Pause(_ sender: AnyObject) {
        if audioPlayer.isPlaying{
            audioPlayer.pause()
            
        }
        else{
            
        }
    }
    
    @IBAction func Restart(_ sender: AnyObject) {
        if audioPlayer.isPlaying{
            
            audioPlayer.currentTime = 0
            audioPlayer.play()
            
        }
        else{
            
            audioPlayer.play()
            
        }
    }
    
}

