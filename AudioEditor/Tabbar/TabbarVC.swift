//
//  TabbarVC.swift
//  AudioEditor
//
//  Created by haiphan on 07/01/2023.
//

import UIKit
import EasyBaseCodes

class TabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
        setupRX()
    }
}
extension TabbarVC {
    
    private func setupUI() {
        let home = HomeVC.createVC()
        let naviHome = UINavigationController(rootViewController: home)
        naviHome.tabBarItem = UITabBarItem(title: "Home", image: nil, selectedImage: nil)
        viewControllers = [naviHome]
        
        if #available(iOS 15.0, *) {
           let appearance = UITabBarAppearance()
           appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .gray
           
           tabBar.standardAppearance = appearance
           tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
    }
    
    private func setupRX() {
        
    }
    
}
