import UIKit

extension UIDevice {
    var deviceName: String {
        return "xxx" // this returns the current device model name, e.g iPhone 14
    }

    var deviceDescription: String {
        let timeText = DateUtils.displayDateTimeFormatter.string(from: Date())
        return deviceName + ", " + timeText
    }
}

class DateUtils {
    static var displayDateTimeFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "dMMMyyyy, jj:mm", options: 0, locale: Locale.current)
        return dateFormatter
    }()
}
