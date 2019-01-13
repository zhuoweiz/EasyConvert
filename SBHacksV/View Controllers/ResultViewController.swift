//
//  ResultViewController.swift
//  OCRCurrencyConverter
//
//  Created by 王传正 on 2019/1/11.
//  Copyright © 2019 zcgr. All rights reserved.
//

import UIKit

protocol ResultViewControllerDelegate: class {
    func getImage() -> UIImage
}

class ResultViewController: UIViewController {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var fromCurrencyLabel: UILabel!
    @IBOutlet weak var toCurrencyLabel: UILabel!
    
    weak var delegate: ResultViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoView.image = delegate?.getImage()
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
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
