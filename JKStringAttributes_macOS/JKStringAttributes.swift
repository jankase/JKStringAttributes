//
// Created by Jan Kase on 10/04/2018.
// Copyright (c) 2018 Jan Kase. All rights reserved.
//

import AppKit

public struct JKStringAttributes {

  public var font: NSFont?
  public var fontColor: NSColor?

  public var baseLineOffset: CGFloat?

  public var backgroundColor: NSColor?

  public var paragraphStyle: NSParagraphStyle?

  public var strikeThroughStyle: NSUnderlineStyle?
  public var strokeColor: NSColor?
  public var strokeWidth: CGFloat?
  public var underlineStyle: NSUnderlineStyle?
  public var underlineColor: NSColor?

#if !os(watchOS)
  public var shadow: NSShadow?
#endif

  public var attributes: [String: Any] {
    var theCurrentAttributes: [String: Any] = [:]

    theCurrentAttributes[NSFontAttributeName] = font
    theCurrentAttributes[NSForegroundColorAttributeName] = fontColor

    theCurrentAttributes[NSBaselineOffsetAttributeName] = baseLineOffset

    theCurrentAttributes[NSBackgroundColorAttributeName] = backgroundColor

    theCurrentAttributes[NSParagraphStyleAttributeName] = paragraphStyle

    theCurrentAttributes[NSStrikethroughStyleAttributeName] = strikeThroughStyle?.rawValue
    theCurrentAttributes[NSStrokeColorAttributeName] = strokeColor
    theCurrentAttributes[NSStrokeWidthAttributeName] = strokeWidth
    theCurrentAttributes[NSUnderlineStyleAttributeName] = underlineStyle
    theCurrentAttributes[NSUnderlineColorAttributeName] = underlineColor

#if !os(watchOS)
    theCurrentAttributes[NSShadowAttributeName] = shadow
#endif

    return theCurrentAttributes
  }

  public init(font aFont: NSFont, fontColor aColor: NSColor) {
    font = aFont
    fontColor = aColor
  }

}
