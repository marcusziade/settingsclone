//
//  ContentView.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 25.2.2021.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Properties
    
    var items = Items()
    var onClose: (() -> Void)?

    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(items.connectivity, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.alert, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.preference, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.appStore, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }

                Section {
                    ForEach(items.preInstalled, id: \.self) { item in
                        NavigationLink(
                            destination: Text(item.title),
                            label: { ItemRowView(item: item) }
                        )
                    }
                }
            }.listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Settings"))
            .navigationBarItems(leading: Button("Go To UIkit") { onClose?() })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
