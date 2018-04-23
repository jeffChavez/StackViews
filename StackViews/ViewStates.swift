import Foundation

struct DetailedViewState {
    let subtitlesStackViewIsHidden: Bool
    let subtitle2LabelIsHidden: Bool
    let carouselStackViewIsHidden: Bool
    let bodyLabelStackViewIsHidden: Bool
    let buttonsStackViewIsHidden: Bool
    let secondaryButtonIsHidden: Bool
    let ctaStackViewIsHidden: Bool
}

let viewStates: [DetailedViewState] = {
    return Array(repeatElement(Void(), count: 100)).map { _ in
        return DetailedViewState(
            subtitlesStackViewIsHidden: randomBool(),
            subtitle2LabelIsHidden: randomBool(),
            carouselStackViewIsHidden: randomBool(),
            bodyLabelStackViewIsHidden: randomBool(),
            buttonsStackViewIsHidden: randomBool(),
            secondaryButtonIsHidden: randomBool(),
            ctaStackViewIsHidden: randomBool()
        )
    }
}()

private func randomBool() -> Bool {
    return Int(arc4random_uniform(1000) % 2) == 0 ? true : false
}
