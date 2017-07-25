//
//  NavigationDrawerView.swift
//  DHUtitlityFrameworkIntegration
//
//  Created by Davoodul Hakeem on 24/03/17.
//  Copyright © 2017 Np. All rights reserved.
//

import UIKit

class NavigationDrawerView: UIView,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var menuTableView: UITableView!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "NavigationDrawerView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10;
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let reuseIdentifier = "TableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)! as UITableViewCell
        cell.textLabel?.text = "Sample"
        return cell
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        self.menuTableView.dataSource = self;
        self.menuTableView.delegate = self;
        self.menuTableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        self.menuTableView.reloadData()
        // Drawing code
    }
 

}
