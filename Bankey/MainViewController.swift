//
//  MainViewController.swift
//  Bankey
//
//  Created by MacBook on 12/07/22.
//

import Foundation
import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTabBar()
    }
    
    private func setupViews() {
        // Define tabBars
        let summaryVC = AccountSummaryViewController()
        let moneyVC = MoveMoneyViewController()
        let moreVC = MoreViewController()
        
        // setup images
        summaryVC.setTabBarImage(imageName: "list.dash.header.rectangle", title: "Summary")
        moneyVC.setTabBarImage(imageName: "arrow.left.arrow.right", title: "Transfers")
        moreVC.setTabBarImage(imageName: "ellipsis.circle", title: "More")
        
        // setup Navigation Controllers
        let summaryNC = UINavigationController(rootViewController: summaryVC)
        let moneyNC = UINavigationController(rootViewController: moneyVC)
        let moreNC = UINavigationController(rootViewController: moreVC)
        
        summaryNC.navigationBar.barTintColor = appColor
        hideNavigationBarLine(summaryNC.navigationBar)
        
        let tabBarList = [summaryNC, moneyNC, moreNC]
        viewControllers = tabBarList
    }
    
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let image = UIImage()
        navigationBar.shadowImage = image
        navigationBar.setBackgroundImage(image, for: .default)
        navigationBar.isTranslucent = false
    }
    
    private func setupTabBar() {
        tabBar.tintColor = appColor
        tabBar.isTranslucent = false
    }
    
    class AccountSummaryViewController: UIViewController {
        override func viewDidLoad() {
            view.backgroundColor = .systemGreen
        }
    }
    
    class MoveMoneyViewController: UIViewController {
        override func viewDidLoad() {
            view.backgroundColor = .systemRed
        }
    }
    
    class MoreViewController: UIViewController {
        override func viewDidLoad() {
            view.backgroundColor = .systemYellow
        }
    }
}
