//
//  DateExtenstion.swift
//  Continuum-CloudKit
//
//  Created by Anthony Torres on 12/12/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import Foundation

extension Date {
  func stringWith(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = dateStyle
    formatter.timeStyle = timeStyle
    return formatter.string(from: self)
  }
}
