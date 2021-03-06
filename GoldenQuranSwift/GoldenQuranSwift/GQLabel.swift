//
//  GQLabel.swift
//  GoldenQuranSwift
//
//  Created by Omar Fraiwan on 3/8/17.
//  Copyright © 2017 Omar Fraiwan. All rights reserved.
//

import UIKit

@IBDesignable
class GQLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var isBoldFont = false
    @IBInspectable var isBold: Bool {
        get {
            return isBoldFont
        }
        set {
            self.isBoldFont = newValue
            updateToNewFont()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateToNewFont()
    }
    
    func updateToNewFont(){
        self.font = FontManager.fontWithSize(size: self.font.pointSize, isBold: self.isBoldFont)
    }
}
