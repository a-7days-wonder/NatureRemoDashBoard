//
// HomeContract.swift
// NatureRemoDashBoard
//
// Created by Shumpei Nagata on 26/05/2020.
// Copyright 2020 ShumpeiNagata. All rights reserved.
//

import UIKit

// MARK: View Contract
protocol HomeViewProtocol: HomeTransitioner {
}

// MARK: Presenter Contract
protocol HomePresenterProtocol: AnyObject {
}

// MARK: Interactor Contract
protocol HomeInteractorProtocol: AnyObject {
}

// MARK: Router Contract
protocol HomeRouterProtocol: AnyObject {
}

protocol HomeTransitioner where Self: UIViewController {
}
