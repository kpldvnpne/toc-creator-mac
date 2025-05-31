//
//  main.swift
//  toc-creator
//
//  Created by Kapildev Neupane on 5/30/25.
//

import Foundation
import PDFKit

print("Hello, World!")

let pdfPath = "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version.pdf"
let pdfUrl = URL(filePath: pdfPath)
let document = PDFDocument(url: pdfUrl)!
print(document.pageCount)

