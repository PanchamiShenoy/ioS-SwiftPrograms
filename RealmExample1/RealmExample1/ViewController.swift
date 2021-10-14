import UIKit
import RealmSwift

class ViewController: UIViewController {
    let realmInstance = try! Realm()
    @IBOutlet var textField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onAdd(_ sender: Any) {
        if let nameInput = textField1.text {
        let user1 = User()
        user1.name = nameInput
        try! realmInstance.write{
                realmInstance.add(user1)
            }
            let alert = UIAlertController(title: "Save", message:" user is added", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))

            self.present(alert,animated:true)
        }
    }
    
    @IBAction func onDelete(_ sender: Any) {
        if let user = realmInstance.objects(User.self).filter(NSPredicate(format: "name = %@",textField1.text ?? "enter name")).first{
            try! realmInstance.write({
                realmInstance.delete(user)
            })
            let alert = UIAlertController(title: "Delete", message: "user is deleted", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))

            self.present(alert,animated:true)

        }
    }
    
    @IBAction func onDisplay(_ sender: Any) {
        let users = realmInstance.objects(User.self)
        var i = 1
        var text = ""
        for user in users{
            text = text+"user\(i) userName: \(user.name)\n"
            i = i+1;
        }
        let alert = UIAlertController(title: "Display", message: "\(text)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))

        self.present(alert,animated:true)

        
    }
        
    }


