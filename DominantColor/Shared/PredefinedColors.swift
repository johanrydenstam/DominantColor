
import Foundation
public extension CGColor {

    static func fromHex(_ hexString: String, alpha: CGFloat = 1.0) -> RGBAPixel {
        let hexint = Int(self.intFromHexString(hexStr: hexString))
        let red = (hexint & 0xff0000) >> 16
        let green = (hexint & 0xff00) >> 8
        let blue = (hexint & 0xff) >> 0
        let color = RGBAPixel(r: UInt8(red), g: UInt8(green), b: UInt8(blue), a: 255)
        return color
    }

    static func intFromHexString(hexStr: String) -> UInt64 {
        var hexInt: UInt64 = 0
        let scanner: Scanner = Scanner(string: hexStr)
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        scanner.scanHexInt64(&hexInt)
        return hexInt
    }

    static var palette: [RGBAPixel] {
        [
            /* Red */
            "#ffd2d7",
            "#f0828c",
            "#e13241",
            "#b9232d",
            "#911414",
            "#ff4b7d",

            /* Orange */
            "#ffe6d2",
            "#faaf82",
            "#eb6937",
            "#d25a1e",
            "#b93c05",
            "#ff912d",

            /* Yellow */
            "#fff0d2",
            "#ffdc8c",
            "#ffc346",
            "#ebaa23",
            "#d28c00",
            "#fff000",

            /* Green */
            "d2ebd2",
            "82c882",
            "32a532",
            "23821e",
            "0f5a0a",
            "00c800",

            /* Turquoise */
            "#cdf0e6",
            "#87d7cd",
            "#3cbeb4",
            "#2d9b91",
            "#197869",
            "#00dcd2",

            /* Blue */
            "d2e6f5",
            "7dbee1",
            "2891c8",
            "1e69aa",
            "0f418c",
            "0091ff",

            /* Purple */
            "#d7d2f0",
            "#b48ccd",
            "#87289b",
            "#641e78",
            "#410f5a",
            "#be00dc",

            /* Gray */
            "#ebebeb",
            "#cccccc",
            "#8c8c8c",
            "#737373",
            "#4d4d4d",

            /* Warm Gray */
            "#ebebe6",
            "#cdcdc3",
            "#a09b96",
            "#78736e",
            "#504b46",

            /* Cool Gray */
            "#e6ebeb",
            "#d2dcdc",
            "#7d9196",
            "#647378",
            "#465055",

            /* Black & White */
//            "#ffffff",
//            "#000000",
        ].map { CGColor.fromHex($0) }
    }
}
