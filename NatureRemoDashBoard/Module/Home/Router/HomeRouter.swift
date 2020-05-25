//
// HomeRouter.swift
// NatureRemoDashBoard
//
// Created by Shumpei Nagata on 26/05/2020.
// Copyright 2020 ShumpeiNagata. All rights reserved.
//

final class HomeRouter {
    private weak var view: HomeViewProtocol?

    init<View: HomeViewProtocol>(view: View) {
        self.view = view
    }
}

// MARK: HomeRouterProtocol
extension HomeRouter: HomeRouterProtocol {
}