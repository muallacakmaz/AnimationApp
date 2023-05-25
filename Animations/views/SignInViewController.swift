//
//  SignInViewController.swift
//  Animations
//
//  Created by Mualla on 24.04.2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    /*   var titles = ["İsim","Soyisim","E-posta","Şifre","Boy","Kilo"]
     var placeHolders = ["örnek: Mualla", "örnek: Çakmaz", "örnek: m.cakmaz@gmail.com","en az 8 karakter, büyük harf, küçük harf ve sayı", "Boy", "Kilo"]
     
     
     let boy = ["1.50","1.51","1.52","1.53","1.54","1.55","1.56","1.57","1.58","1.59","1.60","1.61","1.62","1.63","1.64","1.65","1.66","1.67","1.68","1.69","1.70","1.71","1.72","1.73","1.74","1.75","1.76","1.77","1.78","1.79","1.80","1.81","1.82","1.83","1.84","1.85","1.86","1.87","1.88","1.89","1.90","1.91","1.92","1.93","1.94","1.95","1.96","1.97","1.98","1.99"]
     
     let kilo = ["45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120"]
     
     var boyPickerView = UIPickerView()
     var kiloPickerView = UIPickerView() */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
   /*     registercells()
        
        signInImageView.image = UIImage.gifImageWithName("login2")
        
         
         boyTextField.inputView = boyPickerView
         kiloTextField.inputView = kiloPickerView
         
         boyPickerView.delegate = self
         boyPickerView.dataSource = self
         kiloPickerView.delegate = self
         kiloPickerView.dataSource = self
         
         boyPickerView.tag = 1
         kiloPickerView.tag = 2
         
         let toolBar = UIToolbar()
         toolBar.sizeToFit()
         let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(closePicker))
         toolBar.setItems([btnDone], animated: true)
         
         boyTextField.inputAccessoryView = toolBar
         kiloTextField.inputAccessoryView = toolBar
         } */
        
 /*       func registercells(){
            signInTableView.register(UINib(nibName: "SignInTableViewCell", bundle: nil), forCellReuseIdentifier: "SignInTableViewCell")
        }
    }
}

extension SignInViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignInTableViewCell", for: indexPath) as! SignInTableViewCell
            cell.titleLbl.text = titles[indexPath.section]
            cell.signInTextField.placeholder = placeHolders[indexPath.section]
            return cell
        case 1 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignInTableViewCell", for: indexPath) as! SignInTableViewCell
            cell.titleLbl.text = titles[indexPath.section]
            cell.signInTextField.placeholder = placeHolders[indexPath.section]
            return cell
        case 2 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignInTableViewCell", for: indexPath) as! SignInTableViewCell
            cell.titleLbl.text = titles[indexPath.section]
            cell.signInTextField.placeholder = placeHolders[indexPath.section]
            return cell
        case 3 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignInTableViewCell", for: indexPath) as! SignInTableViewCell
            cell.titleLbl.text = titles[indexPath.section]
            cell.signInTextField.placeholder = placeHolders[indexPath.section]
            return cell
        case 4 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignInTableViewCell", for: indexPath) as! SignInTableViewCell
            cell.titleLbl.text = titles[indexPath.section]
            cell.signInTextField.placeholder = placeHolders[indexPath.section]
            return cell
        case 5 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignInTableViewCell", for: indexPath) as! SignInTableViewCell
            cell.titleLbl.text = titles[indexPath.section]
            cell.signInTextField.placeholder = placeHolders[indexPath.section]
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 18
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}


extension SignInViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
    
    @objc func closePicker() {
        view.endEditing(true)
    } */
