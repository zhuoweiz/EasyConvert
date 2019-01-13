//
//  ChangeCurrenciesViewController.swift
//  OCRCurrencyConverter
//
//  Created by 王传正 on 2019/1/12.
//  Copyright © 2019 zcgr. All rights reserved.
//

import UIKit

class ChangeCurrenciesViewController: UIViewController {

    @IBOutlet weak var currencyOne: UILabel!
    @IBOutlet weak var flagOne: UIButton!
    @IBOutlet var currencyTwo: UIView!
    @IBOutlet weak var flagTwo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
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
