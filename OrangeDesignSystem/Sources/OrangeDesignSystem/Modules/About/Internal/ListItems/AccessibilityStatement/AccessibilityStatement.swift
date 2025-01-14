//
// Software Name: Orange Design System
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Design System
//

import DeclarationAccessibility
import SwiftUI

struct AboutAccessibilityStatementItemConfig: ODSAboutListItemConfig {

    // =======================
    // MARK: Stored Properties
    // =======================

    let title: String
    let icon: Image
    let target: ODSAboutListItemTarget
    let priority: ODSAboutListItemPriority

    // =================
    // MARK: Initializer
    // =================

    init(statementConfig: ODSAboutAccessibilityStatement) {
        title = °°"modules.about.accessibility_statement.title"
        icon = Image("ic_accessibility", bundle: Bundle.ods)
        priority = .accessibilityStatement
        target = .destination(AnyView(
            DeclarationView(xmlFileName: statementConfig.fileName,
                            selectedTheme: .orange,
                            url: statementConfig.reportDetail.absoluteString)
        ))
    }
}
