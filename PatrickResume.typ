#let resume(body) = {
  set document(author: "Patrick Carpanedo", title: "CV")
  set page(paper: "us-letter", margin: (x: 10mm, y: 5mm))
  set text(font: "New Computer Modern", size: 10pt)
  body
}


#show heading: it => {
 v(-1mm)
 set text(weight: "bold",size: .8em)
 set block(below: -0.25em)
 block[#it.body #h(2em) #move(dy: -1em)[#line(length: 35em, stroke: 0.5pt)]]
 v(.5mm)
 
}

#let entry(date, institution, role, location, details) = {
  block(breakable: false)[
  #grid(
    columns: (4),
    gutter:(2%),
    text[#date], text(weight: "bold")[#role], text(style: "italic")[#institution] ,text[#location]
  )
  #move(dy: -1%)[#line(length: 100%, stroke: (dash:"dotted"))]
  #if details != none {
    move( list(indent: 1em, marker: "•", ..details) ,dy: -1.75%)
  }
  #v(-2.25%)
  ]
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
     
    ]
    #v(-5mm)
  ],
  [
    = Education
    #otherEntry("2021 - 2025", link("https://www.bu.edu/")[Boston University], 
           "M.S. Computer Science", "MA, USA", none)
    #otherEntry("2016 - 2020", link("https://www.holycross.edu/")[College of the Holy Cross], 
           "B.A. in Physics", "MA, USA", none)

  ])
  #v(-5mm)
  = Publications & Presentations
  #v(-2mm)
#block[International Conference & Workshop Papers #h(2em) #move(dy: -1em)[#line(length: 25em, stroke: (dash: "dotted"))]]
#v(-6mm)#list(marker: "•", spacing:0.75em,
  [Francesco Ciraolo, Mattia Nicolella, *Patrick Carpanedo*, Denis Hoornaert, Marco Caccamo, and Renato Mancuso. 2025. _*Surgical Software-less I/O Virtualization*_. https://doi.org/10.1145/3722567.3727847],

  [Weifan Chen, Ivan Izhbirdeev, Denis Hoornaert, Shahin Roozkhosh, *Patrick Carpanedo*, Sanskriti Sharma, and Renato Mancuso. _*Low-Overhead Online Assessment of Timely Progress as a System Commodity*_. https://doi.org/10.4230/LIPIcs.ECRTS.2023.13]

)
#v(-1mm)
#block[Presentation #h(1em) #move(dy: -1em)[#line(length: 25em, stroke: (dash: "dotted"))]]
#v(-6mm)#list(marker: "•")[
  Shahin Roozkhosh, Bassel El Mabsout, Cristiano Rodrigues, *Patrick Carpanedo*, Denis Hoornaert, Su Min Tan, Benjamin Lubin, Marco Caccamo, Sandro Pinto, and Renato Mancuso. Burning Fetch Execution: A Framework for Zero-Trust Multi-Party Confidential Computing. In 2024 Technology Innovation Institute (TII) GENZERO Workshop.
]
#v(-1mm)
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
    #v(-2mm)
    #entry("Spring 2022 - Summer 2025", link("https://cpslab.bu.edu/")[Cyber Physical Systems Lab], "Masters Student Researcher", "Boston, MA, USA", (
    "Researched and implemented AXI over Ethernet on Zynq ultrascale+ platforms, assisted in integrating Coresight for program phase evaluation, Participated in pseudo-TPC meetings to review papers with the Lead P.I., and volunteered to mentor students in directed studies within the lab.",
    "Maintained CPS Lab servers (e.g.Proxmox Cluster and supporting container infrastructure) to support research, collaboration, and access to development resources."
    ))
    #entry("Summer 2019", link("https://www.holycross.edu/academics/research/student-research/summer-research")[College of the Holy Cross], 
      "Research Assistant", "Worcester, MA, USA", (
      "Assembled and verified electrical tolerances and timings for subsystems of a custom Beam Profile Monitor (BPM). Evaluated the BPM system through experiments with LabView and oscilloscopes, logged findings, and facilitated weekly presentations and discussions with other research groups.",
    ))
    = Teaching and Mentoring
    #v(-2mm)
    #entry("Spring 2024 - Summer 2025", link("https://www.bu.edu/")[Boston University], 
           "F1Tenth Study Mentor", "Boston, MA, USA", (
      "Assisted undergraduates with F1Tenth hardware integration on Jetson Nano with ROS2, taught electronic design basics, and ensured safe handling of high-current and sensitive electronics.",
    ))
 
    #entry("Fall 2023", link("https://cra.org/ur2phd/")[Computing Research Association], 
           "UR2PhD Mentor", link("https://www.bu.edu/cs/engage/ur2phd/")[Boston University], (
      "Developed mentoring skills, led group and individual sessions with undergraduates to create PoV Display hardware/software modules for the KV260, sourced and verified components, and trained students in academic research methods.",
    ))
  
= Work Experience
#v(-2mm)
#entry("June - July 2025", link("https://www.neobotics.org/")[Neobotics], 
       "Temp Embedded Engineer", "Boston, MA, USA", (
   "Designed system architecture for educational autonomous driving platform through prototyping and research.",
  "Led procurement by developing parts lists and defining architecture for autonomous vehicle systems."
))


= Skills
#v(-2mm)
#list(marker: "•", 
  [*Languages:* *English* [Native], *Portuguese* [Fluent],  *Spanish* [Fluent]],
  [*Programming:* C, C++, Java, Python, Golang, SpinalHDL, SQL, Scala],
  [*Design:* SpinalHDL, Verilog, CAD, PCB design, Carpentry, Fabrication],
  [*Hardware Debugging:* Xilinx Integrated Logic Analyzer, ARM Coresight, Circuit Debugging],
  [*System Administration:* Network Architecture, Proxmox, Incus, Kubernetes, Docker, Git, Cluster Management]
)
]
