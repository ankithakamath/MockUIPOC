//
//  InvestmentTableViewCell.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import UIKit

  


class DetailTableViewCell: UITableViewCell,ConfigureCellProtocol
{
    func configureCell(rowData: Row)
    {
        nameLabel.text = rowData.name
        numberLabel.text = rowData.accountNumber
        amountLabel.text = rowData.amount
    }
    

    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBOutlet weak var amountLabel: UILabel!
    
}
