//
//  SettingsViewController.swift
//  Prework
//
//  Created by Sen Lin on 9/18/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var firstTipField: UITextField!
    @IBOutlet weak var secondTipField: UITextField!
    @IBOutlet weak var thirdTipField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Tip Calculator"
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
