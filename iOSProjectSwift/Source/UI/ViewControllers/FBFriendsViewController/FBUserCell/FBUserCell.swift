//
//  FBUserCell.swift
//  iOSProjectSwift
//
//  Created by Andrew Boychuk on 08.12.2017.
//  Copyright © 2017 Andrew Boychuk. All rights reserved.
//

import UIKit

class FBUserCell: UITableViewCell {
    
    // MARK: - Properties
    
    @IBOutlet var userImageView: ImageView?
    @IBOutlet var fullNameLabel: UILabel?
    
    var userModel: User? {
        willSet {
            if let model = newValue {
                self.fillWithModel(model)
            }
        }
    }
    
    //MARK: - Public
    
    func fillWithModel(_ model: User) {
        self.fullNameLabel?.text = model.fullName
        self.userImageView?.urlString = model.imageUrl
    }
    
    //MARK: - Override
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.userImageView?.contentImageView?.image = nil
    }
}

