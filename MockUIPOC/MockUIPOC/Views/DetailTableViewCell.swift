//
//  InvestmentTableViewCell.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import UIKit

  


class DetailTableViewCell: UITableViewCell,ConfigureCellProtocol
{
    

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    func configureCell(rowData: Row)
    {
        nameLabel.text = rowData.name
        numberLabel.text = rowData.accountNumber
        amountLabel.text = rowData.amount
    }
    
}
