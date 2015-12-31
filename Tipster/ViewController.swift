//
//  ViewController.swift
//  Tipster
//
//  Created by Rohan Raval on 12/29/15.
//  Copyright © 2015 rohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    
    @IBOutlet weak var billLine: UILabel!
    @IBOutlet weak var tipLine: UILabel!
    @IBOutlet weak var numberPeopleLine: UILabel!
    @IBOutlet weak var totalLine: UILabel!
    @IBOutlet weak var perPersonLine: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var peopleControl: UISegmentedControl!
    
    @IBOutlet weak var divView: UIView!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        perPersonLabel.text = "$0.00"
        
        perPersonLabel.hidden = true
        perPersonLine.hidden = true
        
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        print("view will appear")
        
        //retrieves the segment index from NSDefaults and updates tipControl's index to match the default index
        let tipValue = defaults.integerForKey("default_tip_index")
        tipControl.selectedSegmentIndex = tipValue
        
        //retrieves the color value from NSDefaults and updates the View's background color and theme accordingly
        let colorValue = defaults.integerForKey("default_color_value")
      
        if (colorValue == 1)
        {
            self.view.backgroundColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            
            billLine.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            billField.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            tipLine.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            tipLabel.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            tipControl.tintColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            numberPeopleLine.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            peopleControl.tintColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            divView.backgroundColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            totalLine.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            totalLabel.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            perPersonLine.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
            perPersonLabel.textColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)
        }
        
        else
        {
            
            self.view.backgroundColor = UIColor(red: 0.9176, green: 0.4588, blue: 0, alpha: 1.0)//orange
            
            billLine.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            billField.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            tipLine.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            tipLabel.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            tipControl.tintColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            numberPeopleLine.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            peopleControl.tintColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            divView.backgroundColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            totalLine.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            totalLabel.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            perPersonLine.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)
            perPersonLabel.textColor = UIColor(red: 0, green: 0.0039, blue: 0.4667, alpha: 1.0)

        }
        
        //old blue: UIColor(red: 0.098, green: 0, blue: 0.6078, alpha: 1.0)
        //medium blue: UIColor(red: 0, green: 0.0824, blue: 0.6196, alpha: 1.0)
        
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool)
    {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool)
    {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject)
    {
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var numberPeoples = [1, 2, 3, 4]
        let numberPeople = numberPeoples[peopleControl.selectedSegmentIndex]
        
        if (numberPeople > 1)
        {
            perPersonLabel.hidden = false
            perPersonLine.hidden = false
        }
        else
        {
            perPersonLabel.hidden = true
            perPersonLine.hidden = true
        }
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        let perPerson = total/Double(numberPeople)
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        perPersonLabel.text = "$\(perPerson)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPersonLabel.text = String(format: "$%.2f", perPerson)
        
        
    }
    
    @IBAction func onTap(sender: AnyObject)
    {
    
        view.endEditing(true)
    
    }
}

