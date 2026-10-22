#let CV(info_path) = {
  let info = yaml(info_path)

  let main_size = 12pt
  let skill_count = info.skills.len()
  let half_index = calc.ceil(skill_count / 2)

  set page(margin: (top: 1cm, bottom: 1cm))
  set text(size: main_size, font: "Cantarell")

  align(center)[
    #text(13pt)[Curriculum Vitae]
  ]

  text(14pt, weight: 725)[#info.name]
  line(length: 100%)
  table(
    columns: (1fr, 1fr),
    align: top,
    stroke: none,
    text(weight: 700)[Date of Birth:], [#info.dob],
    text(weight: 700)[City:], [#info.city],
    text(weight: 700)[Email Address:], [#info.email],
    text(weight: 700)[Phone Number:], [#info.phone],
    text(weight: 700)[Github:], [#link(info.github)[jamwojt]]
  )

  info.sections.map(s => [
    #text(12pt, weight: 725)[#s.name] \
    #line(length: 100%) \
    #table(
      columns: (auto, 1fr),
      align: top,
      stroke: none,

      ..s.fields.map(f => ([#f.start - #f.end],
      [#text(weight: 700)[#f.name #if "role" in f{[\ #f.role]}] \ #f.desc])).flatten()
    )
  ]).join()

    text(12pt, weight: 725)[Skills]
    line(length: 100%)

    columns(2)[
      #for i in range(0, half_index) {
        [- #info.skills.at(i)]
      }
      #colbreak()
      #for i in range(half_index, skill_count) {
        [- #info.skills.at(i)]
      }
    ]
}
