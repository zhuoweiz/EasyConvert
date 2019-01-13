//
//  ChangeCurrenciesViewController.swift
//  OCRCurrencyConverter
//
//  Created by 王传正 on 2019/1/11.
//  Copyright © 2019 zcgr. All rights reserved.
//

import UIKit

protocol ChooseCurrenciesViewControllerDelegate: class {
    func getSelectedCurrency() -> [String] // [<from/to?>, <currency code>]
    func setCurrency(code: String)
}

enum FromOrTo {
    case from, to
}

class ChooseCurrenciesViewController: UITableViewController {
    
    let currencies = Currency()
    var fromOrTo: FromOrTo!
    
    weak var delegate: ChooseCurrenciesViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        fromOrTo = delegate?.getSelectedCurrency()[0] == "from" ? .from : .to
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencies.names.count // # of currencies
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrencyItem", for: indexPath)
        let flagImage = cell.viewWithTag(1000) as! UIImageView
        let codeLabel = cell.viewWithTag(1001) as! UILabel
        let nameLabel = cell.viewWithTag(1002) as! UILabel
        
        let code = currencies.names.keys.sorted()[indexPath.row]
        flagImage.image = UIImage(named: code)
        codeLabel.text = code
        nameLabel.text = currencies.names[code]
        
        if code == delegate?.getSelectedCurrency()[1] {
            
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let codeLabel = cell.viewWithTag(1001) as! UILabel
            self.delegate?.setCurrency(code: codeLabel.text!)
            dismiss(animated: true, completion: nil)
        }
    }
    
    private func showUpdateErrorAlert() {
        let alert = UIAlertController(title: "Wait", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
