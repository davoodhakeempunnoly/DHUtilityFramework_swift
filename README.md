# DHUtilityFramework_swift
Utilities 

Integration:

Copy and Add DHUtilityFramework to your project.
Add it in the Embedded Binaries(Targets -> General -> Embedded Binaries(in Xcode 8.2))
import DHUtilityFramework "import DHUtility"
Available Methods:

func colorFromHex(hexString: String) // get the color from hex code

func dateFormatter(dateString: Date, formatterString: String) //Format the date to needed format

func timeAgoSinceDate(_ date: Date, currentDate: Date, numericDates: Bool) //to get Time ago since date

func nillCheck(stringToCheck: String?) //For nill check

func isValidEmail(testStr: String) //For validating email

func showAlertWithMessage(title: String, message: String?, presentingViewController: UIViewController) //to show alert
