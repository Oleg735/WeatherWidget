///**
/**

WeatherWidget
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import WidgetKit
import SwiftUI

@main
struct WeatherWidget: Widget {
    private var kind: String = "WeatherWidget"
    
    var body: some WidgetConfiguration {
            StaticConfiguration(kind: kind, provider: WeatherTimeline()) { entry in
                WeatherEntryView(entry: entry)
            }
            .configurationDisplayName("Weather Widget")
            .description("This widget displays weather")
            .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
 
        
//        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: WeatherTimeline()) { entry in
//            WeatherEntryView(entry: entry)
        }
//        .configurationDisplayName("My Widget")
//        .description("This is an example widget.")
//        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
//
//    }
}
//struct WeatherWidget_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            WeatherEntry(entry: WeatherEntry(date: Date(), configuration: ConfigurationIntent()))
//                .previewContext(WidgetPreviewContext(family: .systemMedium))
//
//        }
//    }
//}

