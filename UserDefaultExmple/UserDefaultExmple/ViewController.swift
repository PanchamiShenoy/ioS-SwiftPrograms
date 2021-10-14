import UIKit

class ViewController: UIViewController {
    let userDefaults = UserDefaults.standard
    @IBOutlet var textField1: UITextField!
    @IBOutlet var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = userDefaults.string(forKey:"username" )
        if value != nil{
            label1.text = "hello \(value!)"
        }
    }


    @IBAction func onSave(_ sender: Any) {
        self.userDefaults.set(self.textField1.text!,forKey: "username")
        let alert = UIAlertController(title: "saving", message: "do you wish to save", preferredStyle:.alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        textField1.text = ""
    }
}

