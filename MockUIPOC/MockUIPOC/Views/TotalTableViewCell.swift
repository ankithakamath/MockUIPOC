//
//  TotalTableViewCell.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import UIKit

class TotalTableViewCell: UITableViewCell,ConfigureCellProtocol
{
    
    func configureCell(rowData: Row)
    {
        totalAmountLabel.text = rowData.total
    }

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
  
}
