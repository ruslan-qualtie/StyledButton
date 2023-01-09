#if os(macOS)
import AppKit

// https://gist.github.com/berkcebi/e0f09d5ea3b95ad3230b0995435ec151

extension NSProgressIndicator {
    func set(clampColor: NSColor) {
        guard let adjustedColor = clampColor.usingColorSpace(.sRGB) else {
            contentFilters = []
            return
        }

        let red = adjustedColor.redComponent
        let green = adjustedColor.greenComponent
        let blue = adjustedColor.blueComponent

        let colorMinComponentsVector = CIVector(x: red, y: green, z: blue, w: 0.0)
        let colorMaxComponentsVector = CIVector(x: red, y: green, z: blue, w: 1.0)

        let colorClampFilter = CIFilter(name: "CIColorClamp")!
        colorClampFilter.setDefaults()
        colorClampFilter.setValue(colorMinComponentsVector, forKey: "inputMinComponents")
        colorClampFilter.setValue(colorMaxComponentsVector, forKey: "inputMaxComponents")
        contentFilters = [colorClampFilter]
    }

// https://stackoverflow.com/a/32396595/2895314

    func set(polynomialColor: NSColor) {
        guard let adjustedColor = polynomialColor.usingColorSpace(.sRGB) else {
            contentFilters = []
            return
        }

        let red = adjustedColor.redComponent
        let green = adjustedColor.greenComponent
        let blue = adjustedColor.blueComponent

        let redVector = CIVector(x: red)
        let greenVector = CIVector(x: green)
        let blueVector = CIVector(x: blue)

        let colorPolynomialFilter = CIFilter(name: "CIColorPolynomial")!
        colorPolynomialFilter.setDefaults()
        colorPolynomialFilter.setValue(redVector, forKey: "inputRedCoefficients")
        colorPolynomialFilter.setValue(greenVector, forKey: "inputGreenCoefficients")
        colorPolynomialFilter.setValue(blueVector, forKey: "inputBlueCoefficients")
        contentFilters = [colorPolynomialFilter]
    }
}
#endif
