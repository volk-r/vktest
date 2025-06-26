import UIKit

extension String {

    /// Метод создаёт из строки атрибутированную с данным шрифтом `font` и цветом `color`.
    func attributed(
        font: UIFont = .systemFont(ofSize: UIFont.labelFontSize),
        color: UIColor? = nil,
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment

        var attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .paragraphStyle: paragraphStyle,
        ]

        if let color {
            attributes[.foregroundColor] = color
        }

        let attributedString = NSAttributedString(
            string: self,
            attributes: attributes
        )
        return attributedString
    }

}
