//
//  UITableView+Reuseable.swift
//  FTCellExtentions
//
//  Created by liufengting on 2018/7/20.
//  Copyright © 2018年 liufengting. All rights reserved.
//

import UIKit

public extension UITableView {
    
    public func registerCellClass(cellClass: AnyClass) {
        self.registerCellClass(cellClass: cellClass, nibName: "", bundle:Bundle.main, reuseIdentifier: "")
    }

    public func registerCellClass(cellClass: AnyClass, nibName: String) {
        self.registerCellClass(cellClass: cellClass, nibName: nibName, bundle:Bundle.main, reuseIdentifier: "")
    }
    
    public func registerCellClass(cellClass: AnyClass, bundle: Bundle) {
        self.registerCellClass(cellClass: cellClass, nibName: "", bundle:bundle, reuseIdentifier: "")
    }
    
    public func registerCellClass(cellClass: AnyClass, reuseIdentifier: String) {
        self.registerCellClass(cellClass: cellClass, nibName: "", bundle:Bundle.main, reuseIdentifier: reuseIdentifier)
    }
    
    public func registerCellClass(cellClass: AnyClass, nibName: String = "", bundle: Bundle = Bundle.main, reuseIdentifier: String = "") {
        let name = "\(cellClass)"
        let nibName_real = nibName.count > 0 ? nibName : name
        let reuseIdentifier_real = reuseIdentifier.count > 0 ? reuseIdentifier : name
        self.register(UINib(nibName: nibName_real, bundle: bundle), forCellReuseIdentifier: reuseIdentifier_real);
    }
    
    public func dequeueReusableCellClass(cellClass: AnyClass) -> UITableViewCell? {
        return self.dequeueReusableCell(withIdentifier: "\(cellClass)")
    }

    public func dequeueReusableCellClass(cellClass: AnyClass, for indexPath: IndexPath) -> UITableViewCell {
        return self.dequeueReusableCell(withIdentifier: "\(cellClass)", for: indexPath)
    }

    
}
