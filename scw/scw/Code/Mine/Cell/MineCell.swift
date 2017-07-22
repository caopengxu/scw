//
//  MineCell.swift
//  scw
//
//  Created by cpx on 2017/6/20.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class MineCell: UITableViewCell {
    
    @IBOutlet weak var nikeName: UILabel!
    @IBOutlet weak var GenderImage: UIImageView!
    @IBOutlet weak var changeHeadImage: PXCustomImageView!
    
    @IBOutlet weak var orderAll: UIButton!
    @IBOutlet weak var pendingPaymentBtn: OrderButton!
    @IBOutlet weak var pendingReceiptBtn: OrderButton!
    @IBOutlet weak var pendingEvaluationBtn: OrderButton!
    @IBOutlet weak var alreadyReceiptBtn: OrderButton!
    @IBOutlet weak var afterSaleBtn: OrderButton!
    @IBOutlet weak var pendingPaymentL: UILabel!
    @IBOutlet weak var pendingReceiptL: UILabel!
    @IBOutlet weak var pendingEvaluationL: UILabel!
    @IBOutlet weak var alreadyReceiptL: UILabel!
    @IBOutlet weak var afterSaleL: UILabel!
    
    @IBOutlet weak var CollectionBtn: UIButton!
    @IBOutlet weak var CollectionOne: UIImageView!
    @IBOutlet weak var CollectionTwo: UIImageView!
    @IBOutlet weak var CollectionThree: UIImageView!
    @IBOutlet weak var CollectionOneL: UILabel!
    @IBOutlet weak var CollectionTwoL: UILabel!
    @IBOutlet weak var CollectionThreeL: UILabel!
    
    @IBOutlet weak var BrowseLogBtn: UIButton!
    @IBOutlet weak var BrowseLogOne: UIImageView!
    @IBOutlet weak var BrowseLogTwo: UIImageView!
    @IBOutlet weak var BrowseLogThree: UIImageView!
    @IBOutlet weak var BrowseLogOneL: UILabel!
    @IBOutlet weak var BrowseLogTwoL: UILabel!
    @IBOutlet weak var BrowseLogThreeL: UILabel!
    
    // MARK:=== 初始化界面数据
    func reloadDataWithModel(model: NSObject) {
        
        
    }
    
    
    // MARK:=== 设置
    @IBAction func setUp(_ sender: MyButtonFont) {
        
        
    }
    
    
    
}


