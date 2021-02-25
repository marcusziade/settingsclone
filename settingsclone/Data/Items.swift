//
//  Items.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 25.2.2021.
//

import Foundation

struct Items {

    private let data: [Item] = [
        Item(
            image: "airplane",
            color: .orange,
            title: "Airplane Mode",
            section: .connectivity
        ),

        Item(
            image: "wifi",
            color: .blue,
            title: "Wi-Fi",
            section: .connectivity
        ),

        Item(
            image: "wave.3.right",
            color: .blue,
            title: "Bluetooth",
            section: .connectivity
        ),

        Item(
            image: "antenna.radiowaves.left.and.right",
            color: .green,
            title: "Cellular",
            section: .connectivity
        ),

        Item(
            image: "personalhotspot",
            color: .green,
            title: "Personal Hotspot",
            section: .connectivity
        ),

        Item(
            image: "network",
            color: .blue,
            title: "VPN",
            section: .connectivity
        ),

        Item(
            image: "bolt.horizontal",
            color: .red,
            title: "Notifications",
            section: .alert
        ),

        Item(
            image: "speaker.wave.3",
            color: .red,
            title: "Sounds & Haptics",
            section: .alert
        ),

        Item(
            image: "moon.fill",
            color: .purple,
            title: "Do Not Disturb",
            section: .alert
        ),

        Item(
            image: "hourglass",
            color: .purple,
            title: "Screen Time",
            section: .alert
        ),

        Item(
            image: "gear",
            color: .gray,
            title: "General",
            section: .preference
        ),

        Item(
            image: "switch.2",
            color: .gray,
            title: "Control Center",
            section: .preference
        ),

        Item(
            image: "textformat.size",
            color: .blue,
            title: "Display & Brightness",
            section: .preference
        ),

        Item(
            image: "square.grid.3x1.fill.below.line.grid.1x2",
            color: .purple,
            title: "Home Screen",
            section: .preference
        ),

        Item(
            image: "figure.wave.circle",
            color: .blue,
            title: "Accessibility",
            section: .preference
        ),

        Item(
            image: "seal",
            color: .cyan,
            title: "Wallpaper",
            section: .preference
        ),

        Item(
            image: "faceid",
            color: .green,
            title: "Face ID & Passcode",
            section: .preference
        ),

        Item(
            image: "staroflife.fill",
            color: .red,
            title: "Emergency SOS",
            section: .preference
        ),

        Item(
            image: "heart.fill",
            color: .red,
            title: "",
            section: .preference
        ),

        Item(
            image: "battery.100",
            color: .red,
            title: "Battery",
            section: .preference
        ),

        Item(
            image: "hand.raised.fill",
            color: .blue,
            title: "Privacy",
            section: .preference
        ),

        Item(
            image: "giftcard",
            color: .blue,
            title: "App Store",
            section: .appStore
        ),

        Item(
            image: "wallet.pass.fill",
            color: .green,
            title: "Wallet & Apple Pay",
            section: .appStore
        ),

        Item(
            image: "key.fill",
            color: .gray,
            title: "Passwords",
            section: .preInstalled
        ),

        Item(
            image: "envelope.fill",
            color: .blue,
            title: "Mail",
            section: .preInstalled
        ),

        Item(
            image: "rectangle.stack.person.crop.fill",
            color: .gray,
            title: "Contacts",
            section: .preInstalled
        ),

        Item(
            image: "calendar",
            color: .red,
            title: "Calendar",
            section: .preInstalled
        ),

        Item(
            image: "note.text",
            color: .yellow,
            title: "Notes",
            section: .preInstalled
        ),

        Item(
            image: "list.dash",
            color: .orange,
            title: "Reminders",
            section: .preInstalled
        ),

        Item(
            image: "phone.fill",
            color: .green,
            title: "Phone",
            section: .preInstalled
        ),

        Item(
            image: "bubble.left.fill",
            color: .green,
            title: "Messages",
            section: .preInstalled
        ),

        Item(
            image: "video.fill",
            color: .green,
            title: "FaceTime",
            section: .preInstalled
        ),

        Item(
            image: "safari.fill",
            color: .blue,
            title: "Safari",
            section: .preInstalled
        ),

        Item(
            image: "x.squareroot",
            color: .black,
            title: "Stocks",
            section: .preInstalled
        ),

        Item(
            image: "quote.bubble.fill",
            color: .black,
            title: "Translate",
            section: .preInstalled
        ),

        Item(
            image: "map.fill",
            color: .green,
            title: "Maps",
            section: .preInstalled
        ),

        Item(
            image: "heart.circle.fill",
            color: .red,
            title: "Health",
            section: .preInstalled
        ),
    ]
    let connectivity: [Item]
    let alert: [Item]
    let preference: [Item]
    let appStore: [Item]
    let preInstalled: [Item]

    init() {
        connectivity = data.filter { $0.section == .connectivity }
        alert = data.filter { $0.section == .alert }
        preference = data.filter { $0.section == .preference }
        appStore = data.filter { $0.section == .appStore }
        preInstalled = data.filter { $0.section == .preInstalled }
    }

}

struct Item: Identifiable {

    // MARK: - Types
    enum Section: String, CaseIterable {
        case connectivity
        case alert
        case preference
        case appStore
        case preInstalled
    }

    enum Color: String, CaseIterable {
        case orange
        case blue
        case green
        case red
        case purple
        case gray
        case cyan
        case yellow
        case black
    }

    // MARK: - Properties
    var id = UUID()
    let image: String
    let color: Color
    let title: String
    let section: Section

}
