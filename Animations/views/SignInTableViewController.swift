//
//  SignInTableViewController.swift
//  Animations
//
//  Created by Mualla on 4.05.2023.
//

import ShimmerSwift
import UIKit

class SignInTableViewController: UITableViewController {
    
    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signinImageView: UIImageView!
    @IBOutlet weak var isimTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var şifreTextField: UITextField!
    @IBOutlet weak var boyTextField: UITextField!
    @IBOutlet weak var kiloTextField: UITextField!
    @IBOutlet weak var cloudsImageViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var cloudsImageView: UIImageView!
    
    
    let boy = ["1.50","1.51","1.52","1.53","1.54","1.55","1.56","1.57","1.58","1.59","1.60","1.61","1.62","1.63","1.64","1.65","1.66","1.67","1.68","1.69","1.70","1.71","1.72","1.73","1.74","1.75","1.76","1.77","1.78","1.79","1.80","1.81","1.82","1.83","1.84","1.85","1.86","1.87","1.88","1.89","1.90","1.91","1.92","1.93","1.94","1.95","1.96","1.97","1.98","1.99"]
    
    let kilo = ["45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120"]
    
    var boyPickerView = UIPickerView()
    var kiloPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signinImageView.image = UIImage.gifImageWithName("login2")
        
        boyTextField.inputView = boyPickerView
        kiloTextField.inputView = kiloPickerView
        
        boyPickerView.delegate = self
        boyPickerView.dataSource = self
        kiloPickerView.delegate = self
        kiloPickerView.dataSource = self
        isimTextField.delegate = self
        mailTextField.delegate = self
        şifreTextField.delegate = self
        
        boyPickerView.tag = 1
        kiloPickerView.tag = 2
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(closePicker))
        toolBar.setItems([btnDone], animated: true)
        
        boyTextField.inputAccessoryView = toolBar
        kiloTextField.inputAccessoryView = toolBar
        
        let shimmerBtn = ShimmeringView (frame: CGRect(x: 110, y: 445, width: view.frame.size.width-220, height: 44)) 
        
        view.addSubview(shimmerBtn)
        shimmerBtn.contentView = signUpBtn
        shimmerBtn.shimmerSpeed = 180
        shimmerBtn.isShimmering = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        animateClouds()
    }
    
    @IBAction func signupBtnTapped(_ sender: Any) {
    
        if let email = mailTextField.text, let password = şifreTextField.text {
            
            if email == "" && password == "" {
                Utility().simpleAlert(vc: self, title: "Uyarı!", message: "Lütfen E-mail ve Şifre giriniz.")
            }else{
                if !email.isValidEmail(email){
                    Utility().simpleAlert(vc: self, title: "Uyarı!", message: "Lütfen doğru E-mail giriniz.")
                } else if !password.isValidPassword(password){
                    Utility().simpleAlert(vc: self, title: "Uyarı!", message: "Şifre en az 8 karakterli olup şunları içermelidir = 1 büyük karakter, 1 küçük karakter, 1 rakam.")
                } else{
                    
                }
            }
        }
    }
}

extension SignInTableViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch pickerView.tag{
        case 1:
            return boy.count
        case 2:
            return kilo.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView.tag{
        case 1:
            return boy[row]
        case 2:
            return kilo[row]
        default:
            return "Data not found."
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch pickerView.tag{
        case 1:
            boyTextField.text = boy[row]
        case 2:
            kiloTextField.text = kilo[row]
        default:
            return
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0;
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    @objc func closePicker() {
        view.endEditing(true)
    }
}

extension SignInTableViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == isimTextField {
            let allowedCharacters = "QWERTYUIOPĞÜASDFGHJKLŞİZXCVBNMÖÇqwertyuıopğüasdfghjklşizxcvbnmöç"
            let allowedCharacterSet = CharacterSet(charactersIn: allowedCharacters)
            let typedCharacterSetIn = CharacterSet(charactersIn: string)
            let characters = allowedCharacterSet.isSuperset(of: typedCharacterSetIn)
            return characters
        }
        return true
    }
}

extension String {
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: email)
        return result
    }
    
    public func isValidPassword(_ password: String) -> Bool {
        let passwordRegex = "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        let result = passwordTest.evaluate(with: password)
        return result
    }
}

extension SignInTableViewController {
  
    func animateClouds() {
        cloudsImageViewLeadingConstraint.constant = 0
        cloudsImageView.layer.removeAllAnimations()
        view.layoutIfNeeded()
        let distance = view.bounds.width - cloudsImageView.bounds.width
        self.cloudsImageViewLeadingConstraint.constant = distance
        UIView.animate(withDuration: 15, delay: 0, options: [.repeat, .curveLinear], animations: {
            self.view.layoutIfNeeded()
        })
    }
}
