//
//  LabelCell.swift
//  Example
//
//  Created by Ben Shutt on 30/07/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import Foundation
import UIKit
import AttributedText

/// Alias to `AttributedLabel`
typealias Label = AttributedLabel

/// `UITableViewCell` with a `Label`
class LabelCell: UITableViewCell {

    /// `Label`
    private(set) lazy var label: Label = {
        let label = Label()
        label.backgroundColor = .clear
        label.numberOfLines = 0
        return label
    }()

    // MARK: - Init

    override init(
        style: UITableViewCell.CellStyle,
        reuseIdentifier: String?
    ) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    // MARK: - Setup

    /// Shared initializer functionality
    private func setup() {
        contentView.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: UIEdgeInsets.insets.top
            ),
            label.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -UIEdgeInsets.insets.right
            ),
            label.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor,
                constant: -UIEdgeInsets.insets.bottom
            ),
            label.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: UIEdgeInsets.insets.left
            )
        ])
    }
}

// MARK: - UIEdgeInsets

private extension UIEdgeInsets {

    /// `UIEdgeInsets`
    static var insets: UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    }
}
