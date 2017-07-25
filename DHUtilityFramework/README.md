# DHUtilityFramework
Utility framework for swift

Integration:
  
  1. Copy and Add DHUtilityFramework to your project.
  2. Add it in the Embedded Binaries(Targets -> General -> Embedded Binaries(in Xcode 8.2))
  3. import DHUtilityFramework 
             "import DHUtility"

Available Methods:

1. func colorFromHex(hexString: String)  // get the color from hex code 

2. func dateFormatter(dateString: Date, formatterString: String) //Format the date to needed format

3. func timeAgoSinceDate(_ date: Date, currentDate: Date, numericDates: Bool) //to get Time ago since date

4. func nullCheck(stringToCheck: String?) //For null check

5. func isValidEmail(testStr: String) //For validating email

6. func showAlertWithMessage(title: String, message: String?, presentingViewController: UIViewController) //to show alert
