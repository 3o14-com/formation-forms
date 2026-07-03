#set page(paper: "a4", margin: (x: 2cm, y: 2.5cm))
#set text(size: 11pt)

// Read dynamically injected json values
#let data = json("data.json")

#align(center)[
  #text(size: 20pt, weight: "bold", fill: rgb("#1e3a8a"))[Form W-4 - Employee's Allowance Certificate]
]

#v(1cm)

#grid(
  columns: (1.5fr, 3fr),
  row-gutter: 1.5em,
  [*Employee Name:*], [#if data.at("full_name", default: "") != "" { data.at("full_name") } else { [_Not Provided_] }],
  [*Date of Birth:*], [#if data.at("dob", default: "") != "" { data.at("dob") } else { [_Not Provided_] }],
  [*Marital Status:*], [#data.at("marital_status", default: "Single")],
  [*Total Allowances:*], [#data.at("allowances", default: "0")],
)

#v(2cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.5cm)
#align(center)[
  #text(size: 8pt, fill: gray)[Official layout rendered via Typst WASM compiler]
]
