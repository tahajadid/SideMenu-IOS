//
//  HomeController.swift
//  TMovies
//
//  Created by Taha JADID on 22/2/2023.
//

import UIKit

class HomeController: UIViewController {
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "screen_background")
        configureNavigationBar()
    }
    
    @objc func handleMenuToogle() {
        delegate?.handleMenuToggle(forMenuOptiom: MenuOptionItem(
            id: 0,
            title: "Home",
            image: "home",
            isSelected: true
        ))
        print("Toogle menu(HomeController)..")
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.barStyle = .default
        
        navigationItem.title = "T-Movies"
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "primary_color")]
        navigationController?.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToogle))
        
    }
}
