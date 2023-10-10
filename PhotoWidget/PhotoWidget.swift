//
//  PhotoWidget.swift
//  PhotoWidget
//
//  Created by Ümit Örs on 10.10.2023.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), emoji: "😀", image: "img1")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), emoji: "😀", image: "img1")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, emoji: "😀", image: "img1")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .never)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let emoji: String
    let image : String
}

struct PhotoWidgetEntryView : View {
    var entry: Provider.Entry
        var image : Image
        var body: some View {
            widgetImage(image: Image("img1"))
        }
}

struct PhotoWidget: Widget {
    let kind: String = Constans.kind

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                PhotoWidgetEntryView(entry: entry, image: Image("img1"))
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                PhotoWidgetEntryView(entry: entry, image: Image("img1"))
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

#Preview(as: .systemSmall) {
    PhotoWidget()
} timeline: {
    SimpleEntry(date: .now, emoji: "😀", image: "img1")
    SimpleEntry(date: .now, emoji: "🤩", image: "img1")
}
