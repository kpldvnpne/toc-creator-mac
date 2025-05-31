//
//  main.swift
//  toc-creator
//
//  Created by Kapildev Neupane on 5/30/25.
//

import Foundation
import PDFKit

let pdfPath = "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version.pdf"
let pdfUrl = URL(filePath: pdfPath)
let document = PDFDocument(url: pdfUrl)!

let outlineRoot = document.outlineRoot
print("Old number of children in TOC:", outlineRoot?.numberOfChildren ?? "No children")


// // Conclusion: In most of the cases, the odd is assigned to even while the even is assigned to even. Hence, 1 would lead to 2
// // Changing the vlaue of at didn't help. Let's use PDFView instead.
//let newOutline = PDFOutline()
//for i in 0..<document.pageCount {
//    let page = document.page(at: i)!
//    print("Page \(i + 1) could be accessed. Label: \(page.label ?? "No Label ")")
//    let newChild = PDFOutline()
//    let pageNum = i + 1
//    newChild.label = "Page \(pageNum)"
//    
//    let pageRect = page.bounds(for: PDFDisplayBox.mediaBox)
//    print(pageRect.width, pageRect.height)
//    let min = min(pageRect.width, pageRect.height)
//    let atPoint = CGPoint(x: min, y: pageRect.height)
//    
//    newChild.destination = PDFDestination(page: page, at: atPoint)
//    newOutline.insertChild(newChild, at: i)
//}
//document.outlineRoot = newOutline


let outline: TocItem = TocItem(children: [
    TocItem(
        label: "Cover",
        pageNum: 1
    ),
    TocItem(
        label: "Contents",
        pageNum: 5
    ),
    TocItem(
        label: "Introduction",
        pageNum: 6 // TODO: Fix this issue
    ),
    TocItem(
        label: "Test 1",
        pageNum: 12,
        children: [
            TocItem(
                label: "Listening",
                pageNum: 12,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 12,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 13,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 15,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 17,
                    ),
                ]
            ),
            TocItem(
                label: "Reading",
                pageNum: 18,
                children: [
                    TocItem(
                        label: "Passage 1",
                        pageNum: 18,
                    ),
                    TocItem(
                        label: "Passage 2",
                        pageNum: 22,
                    ),
                    TocItem(
                        label: "Passage 3",
                        pageNum: 26,
                    ),
                ]
            ),
            TocItem(
                label: "Writing",
                pageNum: 30,
                children: [
                    TocItem(
                        label: "Task 1",
                        pageNum: 30,
                    ),
                    TocItem(
                        label: "Task 2",
                        pageNum: 31,
                    ),
                ]
            ),
            TocItem(
                label: "Speaking",
                pageNum: 32,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 32,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 32,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 32,
                    ),
                ]
            ),
        ],
    ),
    TocItem(
        label: "Test 2",
        pageNum: 33,
        children: [
            TocItem(
                label: "Listening",
                pageNum: 33,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 33,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 34,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 36,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 38,
                    ),
                ]
            ),
            TocItem(
                label: "Reading",
                pageNum: 39,
                children: [
                    TocItem(
                        label: "Passage 1",
                        pageNum: 39,
                    ),
                    TocItem(
                        label: "Passage 2",
                        pageNum: 42,
                    ),
                    TocItem(
                        label: "Passage 3",
                        pageNum: 46,
                    ),
                ]
            ),
            TocItem(
                label: "Writing",
                pageNum: 51,
                children: [
                    TocItem(
                        label: "Task 1",
                        pageNum: 51,
                    ),
                    TocItem(
                        label: "Task 2",
                        pageNum: 52,
                    ),
                ]
            ),
            TocItem(
                label: "Speaking",
                pageNum: 53,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 53,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 53,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 53,
                    ),
                ]
            ),
        ],
    ),
    TocItem(
        label: "Test 3",
        pageNum: 54,
        children: [
            TocItem(
                label: "Listening",
                pageNum: 54,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 54,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 56,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 58,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 59,
                    ),
                ]
            ),
            TocItem(
                label: "Reading",
                pageNum: 60,
                children: [
                    TocItem(
                        label: "Passage 1",
                        pageNum: 60,
                    ),
                    TocItem(
                        label: "Passage 2",
                        pageNum: 64,
                    ),
                    TocItem(
                        label: "Passage 3",
                        pageNum: 68,
                    ),
                ]
            ),
            TocItem(
                label: "Writing",
                pageNum: 73,
                children: [
                    TocItem(
                        label: "Task 1",
                        pageNum: 73,
                    ),
                    TocItem(
                        label: "Task 2",
                        pageNum: 74,
                    ),
                ]
            ),
            TocItem(
                label: "Speaking",
                pageNum: 75,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 75,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 75,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 75,
                    ),
                ]
            ),
        ],
    ),
    TocItem(
        label: "Test 4",
        pageNum: 76,
        children: [
            TocItem(
                label: "Listening",
                pageNum: 76,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 76,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 77,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 79,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 81,
                    ),
                ]
            ),
            TocItem(
                label: "Reading",
                pageNum: 82,
                children: [
                    TocItem(
                        label: "Passage 1",
                        pageNum: 82,
                    ),
                    TocItem(
                        label: "Passage 2",
                        pageNum: 86,
                    ),
                    TocItem(
                        label: "Passage 3",
                        pageNum: 89,
                    ),
                ]
            ),
            TocItem(
                label: "Writing",
                pageNum: 95,
                children: [
                    TocItem(
                        label: "Task 1",
                        pageNum: 95,
                    ),
                    TocItem(
                        label: "Task 2",
                        pageNum: 96,
                    ),
                ]
            ),
            TocItem(
                label: "Speaking",
                pageNum: 97,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 97,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 97,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 97,
                    ),
                ]
            ),
        ],
    ),
    TocItem(
        label: "Audioscripts",
        pageNum: 98,
        children: [
            TocItem(
                label: "Test 1",
                pageNum: 98,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 98,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 99,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 100,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 101,
                    ),
                ]
            ),
            TocItem(
                label: "Test 2",
                pageNum: 103,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 103,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 104,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 105,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 107,
                    ),
                ]
            ),
            TocItem(
                label: "Test 3",
                pageNum: 109,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 109,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 110,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 111,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 113,
                    ),
                ]
            ),
            TocItem(
                label: "Test 4",
                pageNum: 115,
                children: [
                    TocItem(
                        label: "Part 1",
                        pageNum: 115,
                    ),
                    TocItem(
                        label: "Part 2",
                        pageNum: 116,
                    ),
                    TocItem(
                        label: "Part 3",
                        pageNum: 117,
                    ),
                    TocItem(
                        label: "Part 4",
                        pageNum: 119,
                    ),
                ]
            ),
        ],
    ),
    TocItem(
        label: "Listening and Reading answer keys",
        pageNum: 121,
        children: [
            TocItem(
                label: "Test 1",
                pageNum: 121,
                children: [
                    TocItem(
                        label: "Listening",
                        pageNum: 121
                    ),
                    TocItem(
                        label: "Reading",
                        pageNum: 122
                    ),
                ]
            ),
            TocItem(
                label: "Test 2",
                pageNum: 123,
                children: [
                    TocItem(
                        label: "Listening",
                        pageNum: 123
                    ),
                    TocItem(
                        label: "Reading",
                        pageNum: 124
                    ),
                ]
            ),
            TocItem(
                label: "Test 3",
                pageNum: 125,
                children: [
                    TocItem(
                        label: "Listening",
                        pageNum: 125
                    ),
                    TocItem(
                        label: "Reading",
                        pageNum: 126
                    ),
                ]
            ),
            TocItem(
                label: "Test 4",
                pageNum: 127,
                children: [
                    TocItem(
                        label: "Listening",
                        pageNum: 127
                    ),
                    TocItem(
                        label: "Reading",
                        pageNum: 128
                    ),
                ]
            ),
        ],
    ),
    TocItem(
        label: "Sample Writing answers",
        pageNum: 129,
        children: [
            TocItem(
                label: "Test 1, Writing Task 1",
                pageNum: 129,
            ),
            TocItem(
                label: "Test 1, Writing Task 2",
                pageNum: 130,
            ),
            TocItem(
                label: "Test 2, Writing Task 1",
                pageNum: 131,
            ),
            TocItem(
                label: "Test 2, Writing Task 2",
                pageNum: 133,
            ),
            TocItem(
                label: "Test 3, Writing Task 1",
                pageNum: 135,
            ),
            TocItem(
                label: "Test 3, Writing Task 2",
                pageNum: 136,
            ),
            TocItem(
                label: "Test 4, Writing Task 1",
                pageNum: 138,
            ),
            TocItem(
                label: "Test 4, Writing Task 2",
                pageNum: 139,
            ),
        ]
    ),
    TocItem(
        label: "Sample answer sheets",
        pageNum: 140,
    ),
    TocItem(
        label: "Acknowledgements",
        pageNum: 144,
    ),
    TocItem(
        label: "Cover",
        pageNum: 147,
    ),

])

let newOutlineRoot = outline.toPdfOutline(document: document)

document.outlineRoot = newOutlineRoot

print("New number of children in TOC:", document.outlineRoot?.numberOfChildren ?? "No children")

// Save the pdf back
document.write(toFile: "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version - Edited.pdf")
