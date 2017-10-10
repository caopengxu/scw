//
//  ClassController.swift
//  scw
//
//  Created by cpx on 2017/6/19.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class ClassController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:=== 界面显示前后
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    // MARK:=== viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.sectionHeaderHeight = UITableViewAutomaticDimension
        tableView.estimatedSectionHeaderHeight = 100.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 1000.0
        tableView.register(UINib.init(nibName: "ClassCell", bundle: nil), forCellReuseIdentifier: "ClassCell")
        
    }

    
    
    
    

}



// MARK: - 表格数据源方法
extension ClassController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 8;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8 / 3;
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        let nib = UINib.init(nibName: "ClassHeaderView", bundle: Bundle.main)
        let view = nib.instantiate(withOwner: nib, options: nil)[0] as! ClassHeaderView
        
        return view
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassCell") as! ClassCell
        
        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("点击了")
    }
}




