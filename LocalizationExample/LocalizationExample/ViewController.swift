//
//  ViewController.swift
//  LocalizationExample
//
//  Created by Panchami Shenoy on 13/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "nameKey".localizableString(loc: "en")
        label2.text = "numberKey".localizableString(loc: "en")
    }

    @IBAction func onSelect(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            label1.text = "nameKey".localizableString(loc: "en")
            label2.text = "numberKey".localizableString(loc: "en")
        }else{
            label1.text = "nameKey".localizableString(loc: "es")
            label2.text = "numberKey".localizableString(loc: "es")
        }
    }
    
}
extension String {
    func localizableString(loc : String)-> String{
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
