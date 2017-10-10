//
//  HomeController.swift
//  scw
//
//  Created by cpx on 2017/6/19.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit
import QorumLogs

class HomeController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
//    lazy var defManager: SessionManager = {
//        var defHeaders = Alamofire.SessionManager.defaultHTTPHeaders ?? [:]
//
//        let conf = URLSessionConfiguration.default()
//        conf
//    }
    
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
        tableView.register(UINib.init(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        tableView.register(UINib.init(nibName: "GoodsTableCell", bundle: nil), forCellReuseIdentifier: "GoodsTableCell")
            
        QL1("1")
        QL2("2")
        QL3("3")
        QL4("4")
        QLPlusLine()
        QLShortLine()
        print("123")
        
        RequestBase.post()
    }
    
    @IBAction func goodsListBtnClick(_ sender: UIButton)
    {
        let storyboard = UIStoryboard.init(name: "GoodsListController", bundle: nil)
        let jump = storyboard.instantiateInitialViewController() as! GoodsListController
        
        
        self.navigationController?.pushViewController(jump, animated: true)
    }
    
    func one() -> Void {
        
    }
}


// MARK: - 表格数据源方法
extension HomeController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0
        {
            return 0;
        }
        else
        {
            return 1;
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0
        {
            return 120.0 / 320 * __ScreenWidth
        }
        else
        {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let nib = UINib.init(nibName: "CarouselView", bundle: Bundle.main)
        let view = nib.instantiate(withOwner: nib, options: nil)[0] as! CarouselView
        
        return view
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeCell
            
            return cell;
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeCell
            
            
            return cell;
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("点击了")
    }
}


