//
//  HomeView.swift
//  SwiftCoordinatorPattern-Example
//
//  Created by Jesse on 2021/4/4.
//  Copyright © 2021 Jesse. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    var onRequestHomeDetail: ((HomeVC, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        onRequestHomeDetail?(self, "detailId")
    }

}
