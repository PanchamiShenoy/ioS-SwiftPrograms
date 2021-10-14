

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "second view controller"
        print("View2 viewDidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("View2 viewDidAppear")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("View2 viewWillApppear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("View2 viewDidDisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("View2 viewWillDissapear")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
