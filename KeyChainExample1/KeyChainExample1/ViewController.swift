
import UIKit
import SwiftKeychainWrapper

class ViewController: UIViewController {

    @IBOutlet var textField1: UITextField!
    @IBOutlet var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let password = KeychainWrapper.standard.string(forKey: "passWord")
        if password != "" {
            label1.text = password
        }
        else{
            label1.text = "enter password first"
        }
    }

    @IBAction func onSave(_ sender: Any) {
        label1.text = textField1.text!
        KeychainWrapper.standard.set(textField1.text ?? "", forKey: "passWord")
    }
    
}

