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

import Foundation
import OrangeDesignSystem
import SwiftUI

struct ComponentsList: View {

    // =======================
    // MARK: Stored Properties
    // =======================

    @EnvironmentObject private var themeProvider: ThemeProvider
    let components: [Component]
    let columns = [GridItem(.adaptive(minimum: 150.0), spacing: ODSSpacing.none, alignment: .center)]

    // =================
    // MARK: Initializer
    // =================

    init() {
        // Remark: Components are automatically displayed sorted by their name
        let components: [Component] = [
            BannerComponent(),
            BottomSheetComponent(),
            ButtonComponent(),
            CardComponent(),
            ChipsComponent(),
            ListComponent(),
            NavigationBarComponent(),
            ProgressIndicatorComponent(),
            SliderComponent(),
            TabBarComponent(),
            TextFieldComponent(),
            ToolBarComponent(),
        ]
        self.components = components.sorted { $0.name < $1.name }
    }

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: ODSSpacing.none) {
                    ForEach(components, id: \.id) { component in
                        smallCard(for: component)
                    }
                }
                .padding(.all, ODSSpacing.s)
            }
            .navigationTitle("main_view.tabs.components")
            .navigationbarMenuForThemeSelection()

            ComponentPage(component: components[0])
        }
        .navigationViewStyle(.stack)
    }

    // =====================
    // MARK: Private helper
    // =====================

    private func smallCard(for component: Component) -> some View {
        NavigationLink {
            ComponentPage(component: component)
        } label: {
            ODSCardSmall(
                title: Text(component.name),
                imageSource: .image(themeProvider.imageFromResources(component.imageName)))
        }
    }
}

#if DEBUG
import OrangeTheme

struct ComponentsCardsList_Previews: PreviewProvider {
    static var previews: some View {
        ThemeablePreviews {
            ComponentsList()
        }
    }
}
#endif
