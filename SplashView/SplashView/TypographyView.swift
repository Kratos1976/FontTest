//
//  TypographyView.swift
//  StoryBook
//
//  Created by Carlos Alcala on 27/1/22.
//

import SwiftUI
import HertzUI

extension Text: Hashable {
    public func hash(into hasher: inout Hasher) {}
}

struct TypographyView: View {
    @State var texts: [Text] = [
        Text("heading4Regular")
            .font(.heading4Regular()),
        Text("heading4Italic")
            .font(.heading4Italic()),
        Text("heading4Bold")
            .font(.heading4Bold()),
        Text("heading5Regular")
            .font(.heading5Regular()),
        Text("heading5Italic")
            .font(.heading5Italic()),
        Text("heading5Bold")
            .font(.heading5Bold()),
        Text("heading6RegularApp")
            .font(.heading6RegularApp()),
        Text("heading6Italic")
            .font(.heading6Italic()),
        Text("heading6Bold")
            .font(.heading6Bold()),
        Text("body1Regular")
            .font(.body1Regular()),
        Text("body1Italic")
            .font(.body1Italic()),
        Text("body1Semibold")
            .font(.body1Semibold()),
        Text("body1Bold")
            .font(.body1Bold()),
        Text("body1UppercaseBold")
            .font(.body1UppercaseBold()),
        Text("body2Regular")
            .font(.body2Regular()),
        Text("body2Italic")
            .font(.body2Italic()),
        Text("body2Semibold")
            .font(.body2Semibold()),
        Text("body2Bold")
            .font(.body2Bold()),
        Text("body2UppercaseBold")
            .font(.body2UppercaseBold()),
        Text("body3Regular")
            .font(.body3Regular()),
        Text("body3Italic")
            .font(.body3Italic()),
        Text("body3Semibold")
            .font(.body3Semibold()),
        Text("body3Bold")
            .font(.body3Bold()),
        Text("body3UppercaseBold")
            .font(.body3UppercaseBold()),
        Text("body4Regular")
            .font(.body4Regular()),
        Text("body4Italic")
            .font(.body4Italic()),
        Text("body4Semibold")
            .font(.body4Semibold()),
        Text("body4Bold")
            .font(.body4Bold()),
        Text("body4UppercaseBold")
            .font(.body4UppercaseBold()),
        Text("button")
            .font(.button()),
        Text("textCTASM")
            .font(.textCTASM()),
        Text("textCTAXS")
            .font(.textCTAXS()),
        Text("textCTACaption")
            .font(.textCTACaption()),
        Text("captionRegular")
            .font(.captionRegular()),
        Text("captionSemibold")
            .font(.captionSemibold()),
        Text("captionUppercaseBold")
            .font(.captionUppercaseBold()),
    ]

    @State var headingTexts: [Text] = [
        Text("heading4Regular")
            .font(.heading4Regular()),
        Text("heading4Italic")
            .font(.heading4Italic()),
        Text("heading4Bold")
            .font(.heading4Bold()),
        Text("heading5Regular")
            .font(.heading5Regular()),
        Text("heading5Italic")
            .font(.heading5Italic()),
        Text("heading5Bold")
            .font(.heading5Bold()),
        Text("heading6RegularApp")
            .font(.heading6RegularApp()),
        Text("heading6Italic")
            .font(.heading6Italic()),
        Text("heading6Bold")
            .font(.heading6Bold()),
    ]

    @State var bodyTexts: [Text] = [
        Text("body1Regular")
            .font(.body1Regular()),
        Text("body1Italic")
            .font(.body1Italic()),
        Text("body1Semibold")
            .font(.body1Semibold()),
        Text("body1Bold")
            .font(.body1Bold()),
        Text("body1UppercaseBold")
            .font(.body1UppercaseBold()),
        Text("body2Regular")
            .font(.body2Regular()),
        Text("body2Italic")
            .font(.body2Italic()),
        Text("body2Semibold")
            .font(.body2Semibold()),
        Text("body2Bold")
            .font(.body2Bold()),
        Text("body2UppercaseBold")
            .font(.body2UppercaseBold()),
        Text("body3Regular")
            .font(.body3Regular()),
        Text("body3Italic")
            .font(.body3Italic()),
        Text("body3Semibold")
            .font(.body3Semibold()),
        Text("body3Bold")
            .font(.body3Bold()),
        Text("body3UppercaseBold")
            .font(.body3UppercaseBold()),
        Text("body4Regular")
            .font(.body4Regular()),
        Text("body4Italic")
            .font(.body4Italic()),
        Text("body4Semibold")
            .font(.body4Semibold()),
        Text("body4Bold")
            .font(.body4Bold()),
        Text("body4UppercaseBold")
            .font(.body4UppercaseBold()),
    ]

    @State var ctaStylesTexts: [Text] = [
        Text("button")
            .font(.button()),
        Text("textCTASM")
            .font(.textCTASM()),
        Text("textCTAXS")
            .font(.textCTAXS()),
        Text("textCTACaption")
            .font(.textCTACaption()),
    ]

    @State var captionStylesTexts: [Text] = [
        Text("captionRegular")
            .font(.captionRegular()),
        Text("captionSemibold")
            .font(.captionSemibold()),
        Text("captionUppercaseBold")
            .font(.captionUppercaseBold()),
    ]

    var body: some View {
        VStack {
            Group {
                List {

                    Section(header: Text("Heading Styles")
                            .font(.system(size: 30, weight: .bold, design: .default))) {
                        ForEach(headingTexts, id: \.self) { text in
                            text
                        }

                    }

                    Section(header: Text("Body Styles")
                            .font(.system(size: 30, weight: .bold, design: .default))) {
                        ForEach(bodyTexts, id: \.self) { text in
                            text
                        }

                    }

                    Section(header: Text("CTA Styles")
                            .font(.system(size: 30, weight: .bold, design: .default))) {
                        ForEach(ctaStylesTexts, id: \.self) { text in
                            text
                        }

                    }

                    Section(header: Text("Caption Styles")
                            .font(.system(size: 30, weight: .bold, design: .default))) {
                        ForEach(captionStylesTexts, id: \.self) { text in
                            text
                        }
                    }
                }
            }
            .navigationTitle("Typography")
        }
    }
}

struct TypographyView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TypographyView()
        }
    }
}
