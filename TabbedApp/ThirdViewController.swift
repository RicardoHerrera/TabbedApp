//
//  ThirdViewController.swift
//  TabbedApp
//
//  Created by Nisum on 12/4/18.
//  Copyright © 2018 Nisum. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onPressAlertButton() {

        let alert = UIAlertController(title: "Alert", message: "This is an Alert", preferredStyle: .alert)

        let okayAction = UIAlertAction(title: "Okay", style: .default) { (alert) in
            print("Okay button")
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            print("Alert button")
        }

        alert.addAction(okayAction)
        alert.addAction(cancelAction)

        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func onPressActionSheetButton() {
        let alert = UIAlertController(title: "Alert", message: "This is an Alert", preferredStyle: .actionSheet)

        let okayAction = UIAlertAction(title: "Okay", style: .default) { (alert) in
            print("Okay button")
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            print("Alert button")
        }

        alert.addAction(okayAction)
        alert.addAction(cancelAction)

        self.present(alert, animated: true, completion: nil)
    }
}
