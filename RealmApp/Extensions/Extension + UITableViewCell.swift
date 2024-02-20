//
//  Extension + UITableViewCell.swift
//  RealmApp
//
//  Created by nikita on 20.02.24.
//  Copyright © 2024 Alexey Efimov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currentTask = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.title
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currentTask.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = currentTask.count.formatted()
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
