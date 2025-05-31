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
            ),
            TocItem(
                label: "Reading",
                pageNum: 18,
            ),
        ],
    ),
])

let newOutlineRoot = outline.toPdfOutline(document: document)

document.outlineRoot = newOutlineRoot

print("New number of children in TOC:", document.outlineRoot?.numberOfChildren ?? "No children")

// Save the pdf back
document.write(toFile: "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version - Edited.pdf")
