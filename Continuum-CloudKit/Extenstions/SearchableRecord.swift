//
//  SearchableRecord.swift
//  Continuum-CloudKit
//
//  Created by Anthony Torres on 12/10/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import Foundation

protocol SearchableRecord {
  func matches(searchTerm: String) -> Bool
}
