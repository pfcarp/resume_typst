#let resume(body) = {
  set document(author: "Patrick Carpanedo", title: "CV")
  set page(paper: "us-letter", margin: (x: 10mm, y: 5mm))
  set text(font: "New Computer Modern", size: 10pt)
  body
}


#show heading: it => {
 v(-2mm)
 set text(weight: "bold")
 set block(below: -0.25em)
 block[#it.body #h(2em) #move(dy: -1em)[#line(length: 35em, stroke: 0.5pt)]]
 v(.5mm)
 
}

#let entry(date, institution, role, location, details) = {
  grid(
    columns: (auto, 1fr),
    gutter: .5em,
    date,
    grid(
      columns: (1fr, auto),
      {h(2mm)+text(weight: "bold")[#role]+ " "+ h(4mm)+ text(style: "italic")[#institution]},
      text[#location]
    )
  )
  block[#move(dy: -.75em)[#line(length: 50.5em, stroke: (dash:"dotted"))]]
  if details != none {
    move( list(indent: 1em, marker: "•", ..details) ,dy: -1em)
  }
  v(-6mm)
}

#let otherEntry(date, institution, role, location, details) = {
  grid(
    columns: (auto, 1fr),
    gutter: .5em,
    date,
    grid(
      columns: (1fr, auto),
      {text(weight: "bold")[#role]+ " "+ text(style: "italic")[#institution]},
      text[#location]
    )
  )
  //block[#move(dy: -1em)[#line(length: 50.5em, stroke: (dash:"dotted"))]]
  if details != none {
    move( list(indent: 1em, marker: "•", ..details) ,dy: -1em)
  }
}

#show link: it => text(rgb("#2b3ac5"), it)

#resume[
   #grid(
  columns: (1fr, 1fr),
  gutter: 24pt,
  [
    = Patrick Carpanedo
    #align(center)[
      #link("mailto:patrickcarpanedo\@gmail.com")[patrickcarpanedo\@gmail.com] |
      #link("https://patrick.carpcompanion.com")[patrick.carpcompanion.com] \
      #link("https://www.linkedin.com/in/patrick-carpanedo-574b04143/")[LinkedIn] |
      #link("https://github.com/pfcarp")[github.com/pfcarp] \
      
      Boston, MA
      #v(5mm)
      *English* [Native],
      *Portuguese* [Fluent],
      *Spanish* [Fluent]
    ]
    #v(-5mm)
  ],
  [
    = Education
    #otherEntry("2021 - Present", link("https://www.bu.edu/")[Boston University], 
           "Master's Computer Science", "MA, USA", none)
    #otherEntry("2016 - 2020", link("https://www.holycross.edu/")[College of the Holy Cross], 
           "Bachelors of Arts in Physics", "MA, USA", none)
    #otherEntry("2012 - 2016", link("https://www.bchigh.edu/")[Boston College High School], 
           "High School Diploma", "MA, USA", none)
  ])
  #v(-5mm)
  = Publications & Presentations
  #v(-2mm)
#block[International Conference & Workshop Papers #h(2em) #move(dy: -1em)[#line(length: 25em, stroke: (dash: "dotted"))]]
#v(-5mm)#list(marker: "•")[
  Weifan Chen, Ivan Izhbirdeev, Denis Hoornaert, Shahin Roozkhosh, *Patrick Carpanedo*, Sanskriti Sharma, and Renato Mancuso. Low-Overhead Online Assessment of Timely Progress as a System Commodity. #link("https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.ECRTS.2023.13")[ECRTS]
]

#block[Presentation #h(2em) #move(dy: -1em)[#line(length: 25em, stroke: (dash: "dotted"))]]
#v(-5mm)#list(marker: "•")[
  Shahin Roozkhosh, Bassel El Mabsout, Cristiano Rodrigues, *Patrick Carpanedo*, Denis Hoornaert, Su Min Tan, Benjamin Lubin, Marco Caccamo, Sandro Pinto, and Renato Mancuso. Burning Fetch Execution: A Framework for Zero-Trust Multi-Party Confidential Computing. In 2024 Technology Innovation Institute (TII) GENZERO Workshop.
]
#v(-2mm)
= Notable Research
#v(-2mm)
#list(
  marker: ">",
  "AXI over Ethernet" + block[#move(dy: -.75em)[#line(length: 25em, stroke: (dash:"dotted"))]] + v(-5mm) +
  block(
    list(marker: "",
      "This work revolves around using Programmable Logic to export bus-level memory transactions packed into an Ethernet frame to allow methods (e.g. Control Flow Integrity checks, Digital Twinning, and Direct Memory Access) to be processed remotely without kernel intervention."
    )
  )+v(1mm),
  "Burning Fetch Execution: A Framework for Zero-Trust Multi-Party Confidential Computing"+ block[#move(dy: -.75em)[#line(length: 25em, stroke: (dash:"dotted"))]] + v(-5mm)+
  block(
    list(marker: "",
      "This work tackles the gap in existing safeguarding technology by avoiding byte-level decryption until it is immediately fetched by the processor, by performing on-the-fetch data decryption, immediately followed by erasing right after processing cycles."
    )
  )
)



   = Research Positions
    #entry("Spring 2022 - ongoing", link("https://cpslab.bu.edu/")[Cyber Physical Systems Lab], "Masters Student", "Boston, MA, USA", (
    "Researched and implemented AXI over Ethernet, integrated hardware for program phase evaluation, and maintained CPS Lab servers (e.g., MegaMind and Proxmox Cluster) to support research, collaboration, and access to development resources. Participated in pseudo-TPC meetings to review papers with the Lead P.I. and volunteered to mentor students in directed studies within the lab.",
    ))
    #entry("Summer 2019", link("https://www.holycross.edu/academics/research/student-research/summer-research")[College of the Holy Cross], 
      "Research Assistant", "Worcester, MA, USA", (
      "Research Assistant responsible for assembling and verifying subsystems of the Beam Profile Monitor (BPM) system, ensuring electrical tolerances and timings. Debugged the BPM system through experiments, logging findings for the Lead P.I., and facilitated weekly presentations and discussions with different research groups.",
    ))
    = Teaching and Mentoring
    #entry("Spring 2024 - Ongoing", link("https://www.bu.edu/")[Boston University], 
           "F1Tenth Study Mentor", "Boston, MA, USA", (
      "Assisting undergraduates with F1Tenth hardware projects, teaching electronic design basics, and ensuring safe handling of high-current and sensitive electronics.",
    ))
 
    #entry("Fall 2023", link("https://cra.org/ur2phd/")[Computing Research Association], 
           "UR2PhD Mentor", link("https://www.bu.edu/cs/engage/ur2phd/")[Boston University], (
      "Developed mentoring skills, led group and individual sessions with undergraduates to create PoV Display hardware/software modules, sourced and verified components, and trained students in academic research methods.",
    ))
    #entry("Spring 2023", link("https://www.bu.edu/")[Boston University], 
           "PL-Ethernet Study Mentor", "Boston, MA, USA", (
      "Taught Vivado Design Suite basics and FPGA functionality, delegated tasks for debugging FPGA-to-Processor Ethernet connectivity, and facilitated weekly meetings to evaluate undergraduate progress and goals.",
    ))


= Skills
#v(-3mm)
#list(marker: "•", 
  [*Programming:* C, C++, Java, Python, SQL],
  [*Design:* System Verilog, Verilog, CAD, PCB design, Carpentry, Additive/Subtractive Fabrication],
  [*Hardware Debugging:* Xilinx Integrated Logic Analyzer, ARM Coresight, Circuit Debugging],
  [*System Administration:* Network Architecture, Virtual Machine Management]
)
]
