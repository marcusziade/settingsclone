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
            color: .systemOrange,
            title: "Airplane Mode",
            section: .connectivity
        ),

        Item(
            image: "wifi",
            color: .systemBlue,
            title: "Wi-Fi",
            section: .connectivity
        ),

        Item(
            image: "wave.3.right",
            color: .systemBlue,
            title: "Bluetooth",
            section: .connectivity
        ),

        Item(
            image: "antenna.radiowaves.left.and.right",
            color: .systemGreen,
            title: "Cellular",
            section: .connectivity
        ),

        Item(
            image: "personalhotspot",
            color: .systemGreen,
            title: "Personal Hotspot",
            section: .connectivity
        ),

        Item(
            image: "network",
            color: .systemBlue,
            title: "VPN",
            section: .connectivity
        ),

        Item(
            image: "bolt.horizontal",
            color: .systemRed,
            title: "Notifications",
            section: .alert
        ),

        Item(
            image: "speaker.wave.3",
            color: .systemRed,
            title: "Sounds & Haptics",
            section: .alert
        ),

        Item(
            image: "moon.fill",
            color: .systemPurple,
            title: "Do Not Disturb",
            section: .alert
        ),

        Item(
            image: "hourglass",
            color: .systemPurple,
            title: "Screen Time",
            section: .alert
        ),

        Item(
            image: "gear",
            color: .systemGray,
            title: "General",
            section: .preference
        ),

        Item(
            image: "switch.2",
            color: .systemGray,
            title: "Control Center",
            section: .preference
        ),

        Item(
            image: "textformat.size",
            color: .systemBlue,
            title: "Display & Brightness",
            section: .preference
        ),

        Item(
            image: "square.grid.3x1.fill.below.line.grid.1x2",
            color: .systemPurple,
            title: "Home Screen",
            section: .preference
        ),

        Item(
            image: "figure.wave.circle",
            color: .systemBlue,
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
            color: .systemGreen,
            title: "Face ID & Passcode",
            section: .preference
        ),

        Item(
            image: "staroflife.fill",
            color: .systemRed,
            title: "Emergency SOS",
            section: .preference
        ),

        Item(
            image: "heart.fill",
            color: .systemRed,
            title: "Exposure Notifications",
            section: .preference
        ),

        Item(
            image: "battery.100",
            color: .systemGreen,
            title: "Battery",
            section: .preference
        ),

        Item(
            image: "hand.raised.fill",
            color: .systemBlue,
            title: "Privacy",
            section: .preference
        ),

        Item(
            image: "giftcard",
            color: .systemBlue,
            title: "App Store",
            section: .appStore
        ),

        Item(
            image: "wallet.pass.fill",
            color: .systemGreen,
            title: "Wallet & Apple Pay",
            section: .appStore
        ),

        Item(
            image: "key.fill",
            color: .systemGray,
            title: "Passwords",
            section: .preInstalled
        ),

        Item(
            image: "envelope.fill",
            color: .systemBlue,
            title: "Mail",
            section: .preInstalled
        ),

        Item(
            image: "rectangle.stack.person.crop.fill",
            color: .systemGray,
            title: "Contacts",
            section: .preInstalled
        ),

        Item(
            image: "calendar",
            color: .systemRed,
            title: "Calendar",
            section: .preInstalled
        ),

        Item(
            image: "note.text",
            color: .systemYellow,
            title: "Notes",
            section: .preInstalled
        ),

        Item(
            image: "list.dash",
            color: .systemOrange,
            title: "Reminders",
            section: .preInstalled
        ),

        Item(
            image: "phone.fill",
            color: .systemGreen,
            title: "Phone",
            section: .preInstalled
        ),

        Item(
            image: "bubble.left.fill",
            color: .systemGreen,
            title: "Messages",
            section: .preInstalled
        ),

        Item(
            image: "video.fill",
            color: .systemGreen,
            title: "FaceTime",
            section: .preInstalled
        ),

        Item(
            image: "safari.fill",
            color: .systemBlue,
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
            color: .systemGreen,
            title: "Maps",
            section: .preInstalled
        ),

        Item(
            image: "heart.circle.fill",
            color: .systemRed,
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

enum ListSection: CaseIterable {
    case connectivity
    case alert
    case preference
    case appStore
    case preInstalled
}

struct Item: Identifiable, Hashable {

    // MARK: - Types

    enum Color: String, CaseIterable {
        case systemOrange
        case systemBlue
        case systemGreen
        case systemRed
        case systemPurple
        case systemGray
        case cyan
        case systemYellow
        case black
    }

    // MARK: - Properties
    
    var id = UUID()
    let image: String
    let color: Color
    let title: String
    let section: ListSection
}
