//
//  ViewController.swift
//  Haptico
//
//  Created by isapozhnik on 03/02/2018.
//  Copyright (c) 2018 isapozhnik. All rights reserved.
//

import UIKit
import Haptico

class ViewController: UIViewController {
    // Generating feedback
    @IBAction func generateSuccess(_ sender: Any) {
        Haptico.shared().generate(.success)
    }
    @IBAction func generateWarning(_ sender: Any) {
        Haptico.shared().generate(.warning)
    }
    @IBAction func generateError(_ sender: Any) {
        Haptico.shared().generate(.error)
    }
    
    // Alert with feedback
    @IBAction func successAlert(_ sender: Any) {
        showAlert(title: "Hurray 📳", message: "This is success alert with haptic feedback", hapticNotification: .success)
    }
    @IBAction func errorAlert(_ sender: Any) {
        showAlert(title: "Oops 📳", message: "This is error alert with haptic feedback", hapticNotification: .error)
    }
    @IBAction func warningAlert(_ sender: Any) {
        showAlert(title: "Warning 📳", message: "This is warning alert with haptic feedback", hapticNotification: .warning)
    }
    
    @IBAction func pattern(_ sender: Any) {
        Haptico.shared().generateFeedbackFromPattern("..oO", delay: 0.1)
    }
    
    @IBAction func endOfPresentyation(_ sender: Any) {
        Haptico.shared().generateFeedbackFromPattern("...---...", delay: 0.1) // End of Presentation Warning: Three light impacts, longer delay, three light impacts
    }
    
    @IBAction func nextSlide(_ sender: Any) {
        Haptico.shared().generateFeedbackFromPattern(".", delay: 0.1) // Next Slide: Light impact
    }
    
    
    @IBAction func previousSlide(_ sender: Any) {
        Haptico.shared().generateFeedbackFromPattern("..", delay: 0.1) // Previous Slide: Two light impacts
    }
    
    @IBAction func cursor(_ sender: Any) {
        Haptico.shared().generateFeedbackFromPattern("o", delay: 0.1) // Cursor Mode: Medium impact
    }
    
    
    @IBAction func spotlight(_ sender: Any) {
        Haptico.shared().generateFeedbackFromPattern("oo", delay: 0.1) // Spotlight Mode: Two medium impacts
    }
    
    
    @IBAction func magnify(_ sender: Any) {
        Haptico.shared().generateFeedbackFromPattern("O", delay: 0.1) // Magnify Mode: Heavy impact
    }
    
    @IBAction func laserButtonTouchDown(_ sender: Any) {
        //
    }
    
    
    @IBAction func laserButtonTouchUp(_ sender: Any) {
        //
    }
    
    private func showAlert(title: String, message: String, hapticNotification: HapticoNotification) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, hapticNotification: hapticNotification, completion: nil)
    }
}
