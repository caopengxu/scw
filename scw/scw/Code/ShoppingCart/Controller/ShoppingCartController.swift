//
//  ShoppingCartController.swift
//  scw
//
//  Created by cpx on 2017/6/19.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class ShoppingCartController: UIViewController {
    
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
        tableView.estimatedRowHeight = 1000.0
        tableView.register(UINib.init(nibName: "ShoppingCartCell", bundle: nil), forCellReuseIdentifier: "ShoppingCartCell")
        
    }
    
    
    
    // MARK:=== 编辑按钮点击
    @IBAction func edit(_ sender: UIButton)
    {
        
    }
}



// MARK: - 表格数据源方法
extension ShoppingCartController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCartCell", for: indexPath) as! ShoppingCartCell
        
        return cell
    }
}


