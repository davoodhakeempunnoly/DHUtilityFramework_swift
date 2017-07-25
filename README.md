# DHUtilityFramework_swift
Utilities 

1. Get Color from Hex String
    public func colorFromHex(hexString: String) -> UIColor

2. Format Date by providing date and Formatter
    public func dateFormatter(date: Date, formatterString: String) -> String

3. Get customised date string by providing datestring, inputDateFromatterString and Output Date Formatter String 
    public func dateFormatter(dateString: String, inputDateformatterString: String, outputDateFormatterString: String) -> String

4. Get Time ago Since Date (ex:1 day Ago, 1 minute Ago etc)
   public func timeAgoSinceDate(_ date: Date, numericDates: Bool) -> String

5. Nill Check 
    public func nillCheck(stringToCheck: String?) -> String

6.Email Validation Check
    public func isValidEmail(_ emailString: String) -> Bool

7.Show Alert Methods

    public func showAlertWithMessage(title: String, message: String?, presentingViewController: UIViewController)

    public func showAlert(title: String, message: String, buttonTitle: String, viewController: UIViewController, handler: ((UIAlertAction) -> Swift.Void)?)

    public func showAlert(title: String, message: String, okButtonTitle: String, cancelBtnTitle: String, viewController: UIViewController, tintColor: UIColor, handler: ((UIAlertAction) -> Swift.Void)?)
