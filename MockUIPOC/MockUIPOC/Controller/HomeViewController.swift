//
//  ViewController.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 14/02/22.
//

import UIKit

class HomeViewController: UIViewController
{
    
    var presenter: MockPresenter = MockPresenter()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let color: UIColor = UIColor( red: CGFloat(32/255.0), green: CGFloat(117/255.0), blue: CGFloat(89/255.0), alpha: CGFloat(1.0) )
        self.view.backgroundColor = color
        tableView.backgroundColor = UIColor( red: CGFloat(237/255.0), green: CGFloat(232/255.0), blue: CGFloat(234/255.0), alpha: CGFloat(1.0))
        self.view.addSubview(button)
        
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    let button: UIButton =
    {
        let button = UIButton()
        button.frame = CGRect(x: 300,y: 650,width: 60,height: 60)
        let color: UIColor = UIColor( red: CGFloat(32/255.0), green: CGFloat(117/255.0), blue: CGFloat(89/255.0), alpha: CGFloat(1.0) )
        button.backgroundColor = color
        button.layer.cornerRadius = 30
        button.tintColor = .white
        button.setImage(UIImage(systemName: "person.3.fill"), for: .normal)
        button.addTarget(self, action:#selector(buttonClicked) , for: UIControl.Event.touchUpInside)
        return button
        
    }()
    
    
    @objc func buttonClicked()
    {
        print("Button Clicked")
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let view = UIView()
        view.backgroundColor = UIColor( red: CGFloat(237/255.0), green: CGFloat(232/255.0), blue: CGFloat(234/255.0), alpha: CGFloat(1.0) )
        let label = UILabel()
        label.text =  presenter.info?.data.sections[section].sectionTitle
        label.textColor = UIColor( red: CGFloat(175/255.0), green: CGFloat(136/255.0), blue: CGFloat(81/255.0), alpha: CGFloat(1.0) )
        label.font = .boldSystemFont(ofSize: 24)
        label.frame = CGRect(x: 20, y: 5, width: 150, height: 30)
        view.addSubview(label)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 5
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return presenter.info?.data.sections.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return presenter.info?.data.sections[section].rows.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let rowData = presenter.info?.data.sections[indexPath.section].rows[indexPath.row]
        let identifier = rowData?.identifier ?? "TableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        (cell as? ConfigureCellProtocol)?.configureCell(rowData: rowData!)
        return cell
    }
    
    
}

extension HomeViewController: MockPresenterDelegate{
    
    func infofetched()
    {
        DispatchQueue.main.async
        {
            self.tableView.reloadData()
        }
        
    }
}

protocol ConfigureCellProtocol
{
    func configureCell(rowData: Row)
}
