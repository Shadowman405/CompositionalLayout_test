//
//  MainTabBarController.swift
//  CompositionalLayout_test
//
//  Created by Maxim Mitin on 4.12.21.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
    let convImage = UIImage(systemName: "bubble.left.and.bubble.right")!
    let peopleImage = UIImage(systemName: "person.2")!
    let carImage = UIImage(systemName: "car")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let flowViewController = FlowViewController()
        let compositionalViewController = CompositionalViewController()
        let advancedController = AdvancedLayout()
        
        viewControllers = [
            generateNavigationController(rootViewController: advancedController, title: "Advanced", image: carImage),
            generateNavigationController(rootViewController: compositionalViewController, title: "Compositional", image: convImage),
            generateNavigationController(rootViewController: flowViewController, title: "Flow", image: peopleImage)
        ]
        
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}

