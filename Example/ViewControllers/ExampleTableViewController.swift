//
//  ExampleTableViewController.swift
//  Example
//
//  Created by Ben Shutt on 30/07/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.

import Foundation
import UIKit
import AttributedText

// swiftlint:disable force_cast

/// Example `UITableViewController`
class ExampleTableViewController: UITableViewController {

    /// Style a given `Label`
    private typealias StyleHandler = (Label) -> Void

    /// `StyleHandler`s
    private var styles: [StyleHandler] {
        return [
            Self.default,
            Self.settingText,
            Self.textColor
        ]
    }

    // MARK: - Init

    /// Default initializer
    init() {
        super.init(style: .grouped)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Styles

    private static func `default`(_ label: Label) {
        var attributedString = AttributedText()

        attributedString.text = "Default"
        attributedString.textColor = .blue
        attributedString.letterSpacing = 12
        attributedString.lineHeight = 25
        attributedString.textAlignment = .center

        label.attributedString = attributedString
    }

    private static func settingText(_ label: Label) {
        var attributedString = AttributedText()

        attributedString.text = " "
        attributedString.textColor = .green
        attributedString.letterSpacing = 2
        attributedString.lineHeight = 20
        attributedString.textAlignment = .left

        label.attributedString = attributedString

        label.text = "Setting text"
        label.underlineStyle = .single
    }

    private static func textColor(_ label: Label) {
        var attributedString = AttributedText()

        attributedString.text = "Text Color"
        attributedString.textColor = .orange

        label.attributedString = attributedString

        label.textColor = .purple
    }

    // MARK: - ViewController lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 50
        tableView.rowHeight = UITableView.automaticDimension

        tableView.register(
            LabelCell.self,
            forCellReuseIdentifier: "\(LabelCell.self)"
        )
    }

    // MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return styles.count
    }

    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "\(LabelCell.self)",
            for: indexPath
        ) as! LabelCell
        styles[indexPath.row](cell.label)
        return cell
    }

    // MARK: - UITableViewDelegate

    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
