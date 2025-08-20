# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This repository contains Typst documents for generating formal business letters in German. The repository uses Typst v0.13.1 with the `letter-pro` package for professional letter formatting.

## Commands

### Generate PDF from Typst documents

```bash
typst compile <filename>.typ pdfs/<filename>.pdf
```

Example:
```bash
typst compile barmenia-antrag-06-25.typ pdfs/barmenia-antrag-06-25.pdf
```

### Watch mode for continuous compilation
```bash
typst watch <filename>.typ pdfs/<filename>.pdf
```

## Document Structure

All Typst documents use the `@preview/letter-pro:3.0.0` package for formatting German business letters. The standard structure includes:

1. Import statement: `#import "@preview/letter-pro:3.0.0": letter-simple`
2. Language setting: `#set text(lang: "de")`
3. Letter configuration using `letter-simple.with()`:
   - **Sender block**: Name, address, and extra contact details (phone, email)
   - **Recipient block**: Recipient name and address
   - **Reference signs** (optional): Key-value pairs like insurance numbers
   - **Date**: German date format (DD.MM.YYYY)
   - **Subject line**: Brief letter subject
4. Letter body content with German salutation and closing

### Common Letter Elements

- Vertical spacing: `#v(1cm)` for spacing between sections
- Attachments section: `*Anlagen:*` followed by bullet list
- Signature line: Often includes "i.A." (im Auftrag) for proxy signatures
- Links: Phone (`#link("tel:...")`) and email (`#link("mailto:...")`)

## File Organization

- **Source files**: `.typ` files in repository root
- **Output PDFs**: Generated in `pdfs/` directory with matching names
- **Assets**: `background.png` available for custom letterhead designs (see `test.typ` for custom page background usage)

