//
//  ViewController.swift
//  AppEventCount
//
//  Created by Austin Dobberfuhl on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForgroundCount = 0
    var didEnterBackgroundCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var didFinishLaunchingWithOptionsLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToOptionsLabel: UILabel!
    
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    
    @IBOutlet weak var willResignActiveLabel: UILabel!
    
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    
    
    func updateView() {
        didFinishLaunchingWithOptionsLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        
        configurationForConnectingLabel.text = "The App has configured \(appDelegate.configurationForConnectingCount) time(s)"
        
        willConnectToOptionsLabel.text = "The App will connect \(willConnectCount) time(s)"
      
        
        didBecomeActiveLabel.text = "The App did become active \(didBecomeActiveCount) time(s)"
    
        
     willResignActiveLabel.text = "The App will resign active \(willResignActiveCount) time(s)"
    
        
        willEnterForegroundLabel.text = "The App will enter the foreground \(willEnterForgroundCount) time(s)"

        
        didEnterBackgroundLabel.text = "The App did enter the background \(didEnterBackgroundCount) time(s)"
       
        
        
        
    }
    
}

