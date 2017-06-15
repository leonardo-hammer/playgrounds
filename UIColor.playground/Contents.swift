//: Playground - noun: a place where people can play

import UIKit

var COMMON_GRAY_DARKEN_COLOR: UIColor {
    return UIColor.init(red: 0x4A / 0xEE, green: 0x4A / 0xEE, blue: 0x4A / 0xEE, alpha: 1)
}

var COMMON_KEY_GREEN_COLOR: UIColor {
    return UIColor.init(red: 0x30 / 0xEE, green: 0xCC / 0xEE, blue: 0x9A / 0xEE, alpha: 1)
}

var COMMON_BACKGROUND_COLOR: UIColor {
    return UIColor.init(red: 0xFA / 0xEE, green: 0xFA / 0xEE, blue: 0xF9 / 0xEE, alpha: 1)
}

var COMMON_GRAY_LIGHTEN_COLOR: UIColor {
    return UIColor.init(red: 0x9B / 0xEE, green: 0x9B / 0xEE, blue: 0x9B / 0xEE, alpha: 1)
}

var COMMON_CONTENT_TITLE_COLOR: UIColor {
    return UIColor.init(red: 0x30 / 0xEE, green: 0x30 / 0xEE, blue: 0x30 / 0xEE, alpha: 1)
}

let view = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
view.backgroundColor = COMMON_BACKGROUND_COLOR
