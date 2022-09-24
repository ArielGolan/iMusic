//
//  MusicPresenter.swift
//  iMusic
//
//  Created by Ariel Golan on 24.09.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol MusicPresentationLogic {
  func presentData(response: Music.Model.Response.ResponseType)
}

class MusicPresenter: MusicPresentationLogic {
  weak var viewController: MusicDisplayLogic?
  
  func presentData(response: Music.Model.Response.ResponseType) {
  
  }
  
}
