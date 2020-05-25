//
// HomeViewController.swift
// NatureRemoDashBoard
//
// Created by Shumpei Nagata on 26/05/2020.
// Copyright 2020 ShumpeiNagata. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    private var presenter: HomePresenterProtocol!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Instance method
    func inject<Presenter: HomePresenterProtocol>(presenter: Presenter) {
        self.presenter = presenter
    }
}

// MARK: HomeViewProtocol
extension HomeViewController: HomeViewProtocol {
}