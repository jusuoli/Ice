//
//  AboutSettingsPane.swift
//  Ice
//

import SwiftUI

struct AboutSettingsPane: View {
    @AppStorage(Defaults.aboutSettingsPaneSelectedTab) var selection: Int = 0

    var body: some View {
        CustomTabView(selection: $selection) {
            CustomTab("About") {
                AboutTab()
            }
            CustomTab("Updates") {
                UpdatesTab()
            }
        }
    }
}

#Preview {
    AboutSettingsPane()
        .buttonStyle(.custom)
}
