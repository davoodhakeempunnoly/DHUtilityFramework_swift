//
//  ViewController.swift
//  DHUtitlityFrameworkIntegration
//
//  Created by Davoodul Hakeem on 21/03/17.
//  Copyright © 2017 Np. All rights reserved.
//

import UIKit
import DHUtility

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var colorView: UIView!
    @IBOutlet var hexCodeTextField: UITextField!
    @IBOutlet var validityLabel: UILabel!

    let dhInstance = DHUtilityManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("#########################################DATE FORMATTER#################################")
        print(dhInstance.dateFormatter(date: Date(), formatterString: "dd-MMM-YYYY"))
        print(dhInstance.dateFormatter(date: Date(), formatterString: "dd MM YYYY HH:mm"))
        print(dhInstance.dateFormatter(date: Date(), formatterString: "dd/MM/YYYY"))
        print(dhInstance.dateFormatter(date: Date(), formatterString: "dd YYY"))
        print(dhInstance.dateFormatter(date: Date(), formatterString: "dd MM YYYY hh:mm"))
       
        print("#########################################TIME AGO SINCE DATE#################################")
        let twentyFiveYearsdate = Date.init(timeIntervalSinceReferenceDate: -5000000*60)
        print(dhInstance.timeAgoSinceDate(twentyFiveYearsdate, numericDates: true))
        
        let sixteenYearsAgo = Date.init(timeIntervalSinceReferenceDate: -50000*60)
        print(dhInstance.timeAgoSinceDate(sixteenYearsAgo, numericDates: true))
        print(dhInstance.timeAgoSinceDate(Date(), numericDates: true))
        
        print("#########################################NILL CHECK#################################")
        print(dhInstance.nillCheck(stringToCheck: nil))
        print(dhInstance.nillCheck(stringToCheck: ""))
        print(dhInstance.nillCheck(stringToCheck: "Check"))
    }
    @IBAction func validateEmailBtnTapped(_ sender: Any) {
        
        let isValid = dhInstance.isValidEmail(self.emailTextField.text!)
        self.validityLabel.text = "Not Valid"
        self.validityLabel.textColor = UIColor.red
        if isValid {
            self.validityLabel.text = "Valid"
            self.validityLabel.textColor = UIColor.green
        }
        dhInstance.showAlertWithMessage(title: "", message: "Message", presentingViewController: self)
    }
    
    @IBAction func applyBtnTapped(_ sender: Any) {
        self.colorView.backgroundColor = dhInstance.colorFromHex(hexString: self.hexCodeTextField.text!)
    }
    @IBAction func menuBtnTapped(_ sender: Any) {
        let customView = NavigationDrawerView.instanceFromNib
        self.view.addSubview(customView())
        customView().frame = UIScreen.main.bounds
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField .resignFirstResponder()
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
