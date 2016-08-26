//
//  RegisterViewController.swift
//  Deep_Life
//
//  Created by YididyaGirma on 3/26/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var phoneCode: UILabel!
    //@IBOutlet weak var countryCode: UILabel!

    var countryName: String = ""
    var phoneCodeTxt: String = ""
    
    @IBOutlet var picker: UIPickerView!
    var countryCode = [
        ["Afghanistan", "Albania","Algeria",
        "Andorra", "Angola", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan","Bahamas",
        "Bahrain", "Bangladesh","Barbados",
        "Belarus",
        "Belgium",
        "Belize",
        "Benin",
        "Bhutan",
        "Bolivia",
        "Bosnia and Herzegovina",
        "Botswana",
        "Brazil",
        "Brunei",
        "Bulgaria",
        "Burkina Faso",
        "Burma",
        "Burundi",
        "Cambodia",
        "Cameroon",
        "Canada",
        "Cape Verde",
        "Central African Republic",
        "Chad",
        "Chile",
        "China",
        "Colombia",
        "Comoros",
        "Congo, Democratic Republic of the",
        "Congo, Republic of the",
        "Costa Rica",
        "Cote d'Ivoire",
        "Croatia",
        "Cuba",
        "Curacao",
        "Cyprus",
        "Czech Republic",
        
        "Denmark",
        "Djibouti",
        "Dominica",
        "Dominican Republic",
        "East Timor",
        "Ecuador",
        "Egypt",
        "El Salvador",
        "Equatorial Guinea",
        "Eritrea",
        "Estonia",
        "Ethiopia",
        "Fiji",
        "Finland",
        "France",
        "Gabon",
        "Gambia, The",
        "Georgia",
        "Germany",
        "Ghana",
        "Greece",
        "Grenada",
        "Guatemala",
        "Guinea",
        "Guinea-Bissau",
        "Guyana",
        "Haiti",
        
        "Honduras",
        "Hong Kong",
        "Hungary",
        
        "Iceland",
        "India",
        "Indonesia",
        "Iran",
        "Iraq",
        "Ireland",
        "Israel",
        "Italy",
        "Jamaica",
        "Japan",
        "Jordan",
        "Kazakhstan",
        "Kenya",
        "Kiribati",
        "Korea, North",
        "Korea, South",
        "Kuwait",
        "Kyrgyzstan",
        "Laos",
        "Latvia",
        "Lebanon",
        "Lesotho",
        "Liberia",
        "Libya",
        "Liechtenstein",
        "Lithuania",
        "Luxembourg",
        "Macau",
        "Macedonia",
        "Madagascar",
        "Malawi",
        "Malaysia",
        "Maldives",
        "Mali",
        "Malta",
        "Marshall Islands",
        "Mauritania",
        "Mauritius",
        "Mexico",
        "Micronesia",
        "Moldova",
        "Monaco",
        "Mongolia",
        "Montenegro",
        "Morocco",
        "Mozambique",
        "Namibia",
        "Nauru",
        "Nepal",
        "Netherlands",

        "New Zealand",
        "Nicaragua",
        "Niger",
        "Nigeria",
        "Norway",
        
        "Oman",
        "Pakistan",
        "Palau",
        "Palestinian Territories",
        "Panama",
        "Papua New Guinea",
        "Paraguay",
        "Peru",
        "Philippines",
        "Poland",
        "Portugal",
        "Qatar",
        
        "Romania",
        "Russia",
        "Rwanda",
        
        "Saint Kitts and Nevis",
        "Saint Lucia",
        "Saint Vincent and the Grenadines",
        "Samoa",
        "San Marino",
        "Sao Tome and Principe",
        "Saudi Arabia",
        "Senegal",
        "Serbia",
        "Seychelles",
        "Sierra Leone",
        "Singapore",
        "Sint Maarten",
        "Slovakia",
        "Slovenia",
        "Solomon Islands",
        "Somalia",
        "South Africa",

        "South Sudan",
        "Spain",
        "Sri Lanka",
        "Sudan",
        "Suriname",
        "Swaziland", 
        "Sweden",
        "Switzerland",
        "Syria",
        "Taiwan",
        "Tajikistan",
        "Tanzania",
        
        "Thailand",

        "Togo",
        "Tonga",
        "Trinidad and Tobago",
        "Tunisia",
        "Turkey",
        "Turkmenistan",
        "Tuvalu",
        "Uganda",
        "Ukraine",
        "United Arab Emirates",
        "United Kingdom",
        "Uruguay",
        "Uzbekistan",
        "Vanuatu",
        "Venezuela",
        "Vietnam",
        "Yemen",
        "Zambia",
        "Zimbabwe"
        
        ], ["+93", "+355", "+213","+376", "+244", "+1 268", "+54", "+374", "+297", "+61", "+43", "+994", "+1 242","+973","+880","+1 246","+375","+32","+501","+229","+975","+591","+387","+267" ,"+55" ,"+673","+359","+226","+95","+257","+855","+237","+1","+238","+236","+235",
            "+56",
            "+86",
            "+57",
            "+269",
            "+243",
            "+242",
            "+506",
            "+225",
            "+385",
            "+53",
            "+599 9",
            "+357",
            "+420",
            
            "+45",
            "+253",
            "+1 767",
            "+1 809/829/849",
            "+670",
            "+593",
            "+20",
            "+503",
            "+240",
            "+291",
            "+372",
            "+251",
            "+679",
            "+358",
            "+33",
            "+241",
            "+220",
            "+995",
            "+49",
            "+233",
            "+30",
            "+1 473",
            "+502",
            "+224",
            "+245",
            "+592",
            "509",
            
            "+504",
            "+852",
            "+36",
            
            "+354",
            "+91",
            "+62",
            "+98",
            "+964",
            "+353",
            "+972",
            "+39",
            "+1 876",
            "+81",
            "+962",
            "+76/+77",
            "+254",
            "+686",
            "+850",
            "+82",
            
            "+965",
            "+996",
            "+856",
            "+371",
            "+961",
            "+266",
            "+231",
            "+218",
            "+423",
            "+370",
            "+352",
            "+853",
            "+389",
            "+261",
            "+265",
            "+60",
            "+960",
            "+223",
            "+356",
            "+692",
            "+222",
            "+230",
            "+52",
            "+691",
            "+373",
            "+377",
            "+976",
            "+382",
            "+212",
            "+258",
            "+264",
            "+674",
            "+977",
            "+31",
            
            "+64",
            "+505",
            "+227",
            "+234",
            "+47",
            
            "+968",
            "+92",
            "+680",
            "+970",
            "+507",
            "+675",
            "+595",
            "+51",
            "+63",
            "+48",
            "+351",
            "+974",
            
            "+40",
            "+7",
            "+250",
            
            "+1 869",
            "+1 758",
            "+1 784",
            "+685",
            "+378",
            "+239",
            "+966",
            "+221",
            "+381",
            "+248",
            "+232",
            "+65",
            "+1 721",
            "+421",
            "+386",
            "+677",
            "+252",
            "+27",
            
            "+211",
            "+34",
            "+94",
            "+249",
            "+597",
            "+268", 
            "+46",
            "+41",
            "+963",
            "+886",
            "+992",
            "+255",
            
            "+66",
            
            "+228",
            "+676",
            "+1 868",
            "+216",
            "+90",
            "+993",
            "+688",
            "+256",
            "+380",
            "+971",
            "+44",
            "+598",
            "+998",
            "+678",
            "+58",
            "+84",
            "+967",
            "+260",
            "+263"
        ]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.picker.delegate = self
        self.picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return countryCode[component].count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return countryCode[component][row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //print(component)
        //print(row)
        
        //print(countryCode[1][row])
        phoneCodeTxt = countryCode[1][row]
        phoneCode.text = phoneCodeTxt
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var fullnameTxtField: UITextField!
    
    @IBOutlet weak var emailTxtField: UITextField!

    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBAction func registerButton(sender: AnyObject) {
        let fullName = fullnameTxtField.text;
        let email = emailTxtField.text;
        let pass = passwordTxtField.text;
        
        if (fullName!.isEmpty || email!.isEmpty || pass!.isEmpty){
            displayAlertMessage("please fill the fields");
            return;
        }
        NSUserDefaults.standardUserDefaults().setObject(email, forKey: "email");
        NSUserDefaults.standardUserDefaults().setObject(pass, forKey: "pass");
        NSUserDefaults.standardUserDefaults().synchronize();
        
    }
    func displayAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated: true, completion: nil);
        

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
