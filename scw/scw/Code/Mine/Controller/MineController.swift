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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        tableView.register(UINib.init(nibName: "MineCell", bundle: nil), forCellReuseIdentifier: "MineCell")
        
    }

    
    
}




// MARK: - 表格数据源方法
extension MineController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MineCell", for: indexPath) as! MineCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("点击了")
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//        return 50
//    }
}
















