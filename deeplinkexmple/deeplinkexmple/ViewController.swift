
import UIKit
import StoreKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onclick1(_ sender: Any) {
        //created demo app and added url scheme
        guard let url = URL(string: "demoapp://") else{
            return;
        }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    
    @IBAction func onClick2(_ sender: Any) {
        guard let url = URL(string: "whatsapp://") else{
            return;
        }
        if UIApplication.shared.canOpenURL(url) {
            print("1+++++++++++++++++++++++++++++")
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }else{
            print("2+++++++++++++++++++++++++")
            let vc = SKStoreProductViewController()
            vc.loadProduct(withParameters: [SKStoreProductParameterITunesItemIdentifier:310633997], completionBlock: nil)
            present(vc, animated: true, completion: nil)
            
        }
    }
    
}

