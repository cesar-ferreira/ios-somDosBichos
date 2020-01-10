//
//  ViewController.swift
//  Som dos Bichos
//
//  Created by César  Ferreira on 09/01/20.
//  Copyright © 2020 César  Ferreira. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func btnDog(_ sender: Any) {
        self.performSom(som: "cao")
    }
    
    @IBAction func btnCat(_ sender: Any) {
        self.performSom(som: "gato")

    }
    
    @IBAction func btnLion(_ sender: Any) {
        self.performSom(som: "leao")

    }
    
    @IBAction func btnMonkey(_ sender: Any) {
        self.performSom(som: "macaco")

    }
    
    @IBAction func btnSheep(_ sender: Any) {
        self.performSom(som: "ovelha")

    }
    
    @IBAction func btnCow(_ sender: Any) {
        self.performSom(som: "vaca")

    }
    
    private func performSom(som: String) {

        if let path = Bundle.main.path(forResource: som, ofType: "mp3") {
            
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
                
            } catch {
                print("Erro ao executar o audio")
            }
        }
        
        self.player = AVAudioPlayer()
        
    }
    
}

