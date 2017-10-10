//
//  MineController.swift
//  scw
//
//  Created by cpx on 2017/6/19.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class MineController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // MARK:=== 界面显示前后
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    // MARK:=== viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 1000
        tableView.register(UINib.init(nibName: "MineCell", bundle: nil), forCellReuseIdentifier: "MineCell")
        tableView.register(UINib.init(nibName: "GoodsTableCell", bundle: nil), forCellReuseIdentifier: "GoodsTableCell")
        
    }
    
}




// MARK: - 表格数据源方法
extension MineController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (section == 0)
        {
            return 1;
        }
        else
        {
            return 8 / 2;
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MineCell") as! MineCell
            
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GoodsTableCell") as! GoodsTableCell
            
            return cell;
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("点击了")
    }
}
















