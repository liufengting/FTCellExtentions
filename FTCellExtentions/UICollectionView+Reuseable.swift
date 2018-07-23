//
//  UICollectionView+Reuseable.swift
//  FTCellExtentions
//
//  Created by liufengting on 2018/7/20.
//  Copyright © 2018年 liufengting. All rights reserved.
//

import UIKit

public extension UICollectionView {
    
    public func registerCellClass(cellClass: AnyClass) {
        self.registerCellClass(cellClass: cellClass, nibName: "", bundle: Bundle.main, reuseIdentifier: "")
    }

    public func registerCellClass(cellClass: AnyClass, nibName: String) {
        self.registerCellClass(cellClass: cellClass, nibName: nibName, bundle: Bundle.main, reuseIdentifier: "")
    }

    public func registerCellClass(cellClass: AnyClass, bundle: Bundle) {
        self.registerCellClass(cellClass: cellClass, nibName: "", bundle: bundle, reuseIdentifier: "")
    }

    public func registerCellClass(cellClass: AnyClass, reuseIdentifier: String) {
        self.registerCellClass(cellClass: cellClass, nibName: "", bundle: Bundle.main, reuseIdentifier: reuseIdentifier)
    }
    
    public func registerCellClass(cellClass: AnyClass, nibName: String = "", bundle: Bundle = Bundle.main, reuseIdentifier: String = "") {
        let name = "\(cellClass)"
        let nibName_real = nibName.count > 0 ? nibName : name
        let reuseIdentifier_real = reuseIdentifier.count > 0 ? reuseIdentifier : name
        self.register(UINib(nibName: nibName_real, bundle: bundle), forCellWithReuseIdentifier: reuseIdentifier_real)
    }
    
    public func registerViewClass(viewClass: AnyClass, kind: String) {
        self.register(viewClass, forSupplementaryViewOfKind: kind, withReuseIdentifier: "\(viewClass)")
    }

    public func dequeueReusableCellClass(cellClass: AnyClass, for indexPath: IndexPath) -> UICollectionViewCell {
        return self.dequeueReusableCell(withReuseIdentifier: "\(cellClass)", for: indexPath)
    }
 
    public func dequeueReusableSupplementaryViewClass(ofKind elementKind: String, viewClass: AnyClass, for indexPath: IndexPath) -> UICollectionReusableView {
        return self.dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: "\(viewClass)", for: indexPath)
    }

}
