//
//  NewAccountTableViewCell.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import UIKit

class NewAccountTableViewCell: UITableViewCell
{

    func configureCell(rowData: Row)
    {
        newAccount.text = "Add a New Account"
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
    @IBOutlet weak var newAccount: UILabel!
    
    
    @IBAction func addAccount(_ sender: Any)
    {
        print("Create New Account Pressed")
    }
}
