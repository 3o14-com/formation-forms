#let data = json("data.json")

// Bold helper — only renders value if non-empty
#let f(val) = {
  if val != "" and val != none { [*#val*] }
}

#set underline(stroke: 0.5pt + black)
#set text(font: ("Times New Roman", "Noto Serif Devanagari"), size: 10pt)
#set page(paper: "a4", margin: (x: 0.5in, y: 0.5in))
#set par(leading: 8pt, spacing: 8pt)

// ── Title ──────────────────────────────────────────────────────────────────
#align(center)[
  #set text(size: 13pt, weight: "bold")
  #underline[शिक्षण सुधार योजना (TIP)]
]

#[*शिक्षण सुधार योजना (TIP)*]

#[_शिक्षण सुधार योजना (TIP)_]

#[_*शिक्षण सुधार योजना (TIP)*_]

_Hello_
_*Hello*_

#v(8pt)

// ── Header Info ────────────────────────────────────────────────────────────
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  [शिक्षकको नाम : #f(data.at("teacher_name", default: ""))],
  align(right)[योजना अवधि : #f(data.at("period", default: ""))],
)
विद्यालय : #f(data.at("school_name", default: ""))

