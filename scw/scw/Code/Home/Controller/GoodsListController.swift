//
//  GoodsListController.swift
//  scw
//
//  Created by cpx on 2017/10/7.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class GoodsListController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib.init(nibName: "GoodsCell", bundle: nil), forCellWithReuseIdentifier: "GoodsCell")
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 1000.0
//        tableView.register(UINib.init(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        
        
    }
}



extension GoodsListController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1;
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GoodsCell", for: indexPath) as! GoodsCell
        
        return cell;
    }
}




