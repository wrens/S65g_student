//
//  ColorViewController.swift
//  Lecture3
//
//  Created by Jp LaFond on 4/8/17.
//  Copyright © 2017 Jp LaFond. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    // color detail to be presented
    var color: Color?

    // UI Elements
    @IBOutlet weak var colorTitle: UILabel!
    @IBOutlet weak var colorSquare: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Besides the guard statement, there's the if-let conditional
        // structure
        if let color = color {
            title = color.description
            colorTitle.text = color.description
            colorSquare.backgroundColor = color.color
        } else {
            // In the real world, these should be localized constants
            title = "?"
            colorTitle.text = "Unknown"
            colorSquare.backgroundColor = UIColor.cyan.withAlphaComponent(0.5)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
