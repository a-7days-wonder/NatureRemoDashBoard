//
// HomePresenter.swift
// NatureRemoDashBoard
//
// Created by Shumpei Nagata on 26/05/2020.
// Copyright 2020 ShumpeiNagata. All rights reserved.
//

final class HomePresenter {
    private weak var view: HomeViewProtocol?
    private let interactor: HomeInteractorProtocol
    private let router: HomeRouterProtocol

    init<View: HomeViewProtocol,
        Interactor: HomeInteractorProtocol,
        Router: HomeRouterProtocol>(view: View, interactor: Interactor, router: Router) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

// MARK: HomePresenterProtocol
extension HomePresenter: HomePresenterProtocol {
}