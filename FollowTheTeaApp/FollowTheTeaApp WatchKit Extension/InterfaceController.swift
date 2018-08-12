//
//  InterfaceController.swift
//  FollowTheTeaApp WatchKit Extension
//
//  Created by Kirill Khudiakov on 24.07.2018.
//  Copyright © 2018 Kirill Khudiakov. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var timer: WKInterfaceTimer!
    
    @IBAction func onTimerButton() {
        print("onTimerButton")
        let countdown: TimeInterval = 20
        let date = Date(timeIntervalSinceNow: countdown)
        timer.setDate(date)
        
    }
    @IBAction func tapToVibro() {
        vibrate()
        for i in 1...5 {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(i), execute: { [weak self] in
                self?.vibrate()
            })
        }
        
        
    }
    
    @objc func vibrate() {
        WKInterfaceDevice.current().play(.success)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }

}
