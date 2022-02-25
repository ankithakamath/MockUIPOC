//
//  NewAccountTableViewCell.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import UIKit

class NewAccountTableViewCell: UITableViewCell
{
    
    
    @IBOutlet weak var newAccount: UILabel!
    
    
    @IBAction func addAccount(_ sender: Any)
    {
        print("Create New Account Pressed")
    }
}
