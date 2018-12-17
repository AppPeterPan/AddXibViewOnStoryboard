//
//  LoadingSuperview.swift
//  Demo
//
//  Created by SHIH-YING PAN on 2018/12/17.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

@IBDesignable class LoadingSuperview: UIView {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        addXibView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addXibView()
    }
    
   
   
    func addXibView() {
        if let loadingView = Bundle(for: LoadingView.self).loadNibNamed("\(LoadingView.self)", owner: nil, options: nil)?.first as? UIView {
            addSubview(loadingView)
            loadingView.frame = bounds
        }
    }

}
