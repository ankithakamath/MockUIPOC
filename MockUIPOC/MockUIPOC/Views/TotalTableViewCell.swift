//
//  TotalTableViewCell.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import UIKit

class TotalTableViewCell: UITableViewCell
{
    
    func configureCell(rowData: Row)
    {
        totalAmountLabel.text = rowData.total
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

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
  
}
