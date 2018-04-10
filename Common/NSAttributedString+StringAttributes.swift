//
// Created by Jan Kase on 10/04/2018.
// Copyright (c) 2018 Jan Kase. All rights reserved.
//

import Foundation

extension NSAttributedString {

  public convenience init(string aString: String, attributes anAttributes: JKStringAttributes) {
    self.init(string: aString, attributes: anAttributes.attributes)
  }

}
