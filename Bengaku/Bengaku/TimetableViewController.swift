//
//  TimetableViewController.swift
//  Bengaku
//
//  Created by 前田陸 on 2018/09/24.
//  Copyright © 2018年 陸　前田. All rights reserved.
//

import UIKit
import SpreadsheetView

class TimetableViewController: UIViewController {
    
    @IBOutlet weak var spreadsheetView: SpreadsheetView!
    
    //Cellにつけるラベルに表示する名前
    let weeks: [String] = ["月曜日","火曜日","水曜日","木曜日","金曜日"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spreadsheetView.dataSource = self
        spreadsheetView.intercellSpacing = CGSize(width: 5, height: 5)
        spreadsheetView.gridStyle = .solid(width: 5, color: .lightGray)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension TimetableViewController: SpreadsheetViewDataSource {
    
    //Cellのwidth
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, widthForColumn column: Int) -> CGFloat {
        if (column == 0) {
            return 30
        } else {
            return view.frame.width/6
        }
    }
    
    //Cellのheight
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, heightForRow column: Int) -> CGFloat {
        if (column == 0) {
            return 30
        } else {
            return view.frame.height/7
        }
    }
    
    //Cellの横の数
    func numberOfColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 6
    }
    
    //Cellの縦の数
    func numberOfRows(in spreadsheetView: SpreadsheetView) -> Int {
        return 7
    }
    
    //Cellの列固定
    func frozenColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 1
    }
    
    //Cellの行固定
    func frozenRows(in spreadsheetView: SpreadsheetView) -> Int {
        return 1
    }
    
    
    
}
