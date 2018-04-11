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

  public var attributes: [NSAttributedStringKey: Any] {
    var theCurrentAttributes: [NSAttributedStringKey: Any] = [:]

    theCurrentAttributes[.font] = font
    theCurrentAttributes[.foregroundColor] = fontColor

    theCurrentAttributes[.baselineOffset] = baseLineOffset

    theCurrentAttributes[.backgroundColor] = backgroundColor

    theCurrentAttributes[.paragraphStyle] = paragraphStyle

    theCurrentAttributes[.strikethroughStyle] = strikeThroughStyle?.rawValue
    theCurrentAttributes[.strokeColor] = strokeColor
    theCurrentAttributes[.strokeWidth] = strokeWidth
    theCurrentAttributes[.underlineStyle] = underlineStyle
    theCurrentAttributes[.underlineStyle] = underlineColor

#if !os(watchOS)
    theCurrentAttributes[.shadow] = shadow
#endif

    return theCurrentAttributes
  }

  public init(font aFont: NSFont, fontColor aColor: NSColor) {
    font = aFont
    fontColor = aColor
  }

}
