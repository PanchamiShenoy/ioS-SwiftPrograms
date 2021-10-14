

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View1 viewDidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("View1 viewDidAppear")
        textField1.text = "didAppear"
    }
    override func viewWillAppear(_ animated: Bool) {
        print("View1 viewWillApppear")
        textField1.text = "willAppear"
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("View1 viewDidDisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("View1 viewWillDissapear")
    }
    
}

