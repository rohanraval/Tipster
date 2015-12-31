//
//  SettingsViewController.swift
//  Tipster
//
//  Created by Rohan Raval on 12/29/15.
//  Copyright © 2015 rohan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController
{

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet weak var bgdColorControl: UISegmentedControl!
    let defaults = NSUserDefaults.standardUserDefaults()

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "Settings"
        
        let defaultTipValue = defaults.integerForKey("default_tip_index")
        defaultTipControl.selectedSegmentIndex = defaultTipValue
        
        let colorValue = defaults.integerForKey("default_color_value")
        bgdColorControl.selectedSegmentIndex = colorValue
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDefaultTipChange(sender: AnyObject)
    {
        //sets the selected index number as the default index number
        defaults.setInteger(defaultTipControl.selectedSegmentIndex, forKey: "default_tip_index")
        defaults.synchronize()
    }
    
    @IBAction func onColorChange(sender: UISegmentedControl)
    {
        var colorVals = ["light", "dark"]
        let colorVal = colorVals[bgdColorControl.selectedSegmentIndex]
    
        if(colorVal == "light")
        {
            let colorNumVal = 0
            defaults.setInteger(colorNumVal, forKey: "default_color_value")
            defaults.synchronize()
        }
        else
        {
            let colorNumVal = 1
            defaults.setInteger(colorNumVal, forKey: "default_color_value")
            defaults.synchronize()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
