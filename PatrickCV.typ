#let cv(body) = {
  set document(author: "Patrick Carpanedo", title: "CV")
  set page(paper: "us-letter", margin: (x: 10mm, y: 10mm))
  //set page(paper: "us-letter", margin: (right: 1in, top: 1.5in, left: 1.5in))
  set text(font: "New Computer Modern", size: 12pt)
  body
}


#show heading: it => {
 v(-2mm)
 set text(weight: "bold")
 set block(below: -0.25em)
 block[#it.body #h(2em) #move(dy: -1em)[#line(length: 100% , stroke: 0.5pt)]]
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
    move( list(indent: 1em, marker: "•", ..details) ,dy: -1%)
  }
  #v(-1%)
  ]
}

#let otherEntry(date, institution, role, location, details) = {
  // grid(
  //   columns: (auto, 1fr),
  //   gutter: 1%,
  //   date,
  //   grid(
  //     columns: (1fr, auto),
  //     {text(weight: "bold")[#role] + text(style: "italic")[#institution]},
  //     text[#location]
  //   )
  // )
  //block[#move(dy: -1em)[#line(length: 50.5em, stroke: (dash:"dotted"))]]
  grid(
    columns: (4),
    gutter:(2%),
    text[#date], text(weight: "bold")[#role], text(style: "italic")[#institution] ,text[#location]
  ) 
  
  if details != none {
    move( list(indent: 1em, marker: "•", ..details) ,dy: -1em)
  }
}

#show link: it => text(rgb("#2b3ac5"), it)

#cv[
= Patrick Carpanedo
#align(center)[*Masters Student*]

#align(center)[
  #link("mailto:patrickcarpanedo\@gmail.com")[patrickcarpanedo\@gmail.com] |
  #link("https://patrick.carpcompanion.com")[patrick.carpcompanion.com] \
  #link("https://www.linkedin.com/in/patrick-carpanedo-574b04143/")[LinkedIn] |
  #link("https://github.com/pfcarp")[github.com/pfcarp] \
  
  Boston, MA
]
#v(-5mm)
= Education
    #otherEntry("2021 - 2025", link("https://www.bu.edu/")[Boston University], 
           "M.S. Computer Science", "MA, USA", none)
    #otherEntry("2016 - 2020", link("https://www.holycross.edu/")[College of the Holy Cross], 
           "B.A. in Physics", "MA, USA", none)
    #otherEntry("2012 - 2016", link("https://www.bchigh.edu/")[Boston College High School], 
           "High School Diploma", "MA, USA", none)
= Research Interest
Investigating, assembling, designing, and testing high-performance safety-critical cyber-physical systems (CPS), with
special focus on integrating FPGAs for sensor-fusion and resource management. Also, interested in investigating practical
applications of network communication and programmable logic within the automotive world to discover new ways
to promote safety, efficiency, and verifiability. Currently, focused on novel uses with hybrid CPU+FPGA platforms to
potentially provide a transparent memory profiler for offboard analysis.
= Publications & Presentations
#block[International Conference & Workshop Papers #h(2em) #move(dy: -1em)[#line(length: 35em, stroke: (dash: "dotted"))]]
#v(-5mm)#list(marker: "•", spacing:1em,
  [Francesco Ciraolo, Mattia Nicolella, *Patrick Carpanedo*, Denis Hoornaert, Marco Caccamo, and Renato Mancuso. 2025. _*Surgical Software-less I/O Virtualization*_. In Proceedings of the 4th International Workshop on Real-time and IntelliGent Edge computing (RAGE '25). Association for Computing Machinery, New York, NY, USA, Article 10, 1–6. https://doi.org/10.1145/3722567.3727847],
  [Weifan Chen, Ivan Izhbirdeev, Denis Hoornaert, Shahin Roozkhosh, *Patrick Carpanedo*, Sanskriti Sharma, and Renato Mancuso. _*Low-Overhead Online Assessment of Timely Progress as a System Commodity*_. In 35th Euromicro Conference on Real-Time Systems (ECRTS 2023). Leibniz International Proceedings in Informatics (LIPIcs), Volume 262, pp. 13:1-13:26, Schloss Dagstuhl – Leibniz-Zentrum für Informatik (2023) https://doi.org/10.4230/LIPIcs.ECRTS.2023.13 #link("https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.ECRTS.2023.13")[ECRTS]]

  
)

#block[Presentation #h(2em) #move(dy: -1em)[#line(length: 35em, stroke: (dash: "dotted"))]]
#v(-5mm)#list(marker: "•")[
  Shahin Roozkhosh, Bassel El Mabsout, Cristiano Rodrigues, *Patrick Carpanedo*, Denis Hoornaert, Su Min Tan, Benjamin Lubin, Marco Caccamo, Sandro Pinto, and Renato Mancuso. _*Burning Fetch Execution: A Framework for Zero-Trust Multi-Party Confidential Computing*_. In 2024 Technology Innovation Institute (TII) GENZERO Workshop.
]

= Proposal Writing
#v(3mm)
#list(
  marker: ">",
  block(breakable: false,
  "Effiecient control for energy constrained quadrapeds proposal"+block[#move(dy: -.75em)[#line(length: 35em, stroke: (dash:"dotted"))]] + v(-4mm) +
  block(
    list(marker: "",
      emph("PIs: Prof. Sabrina Neuman, Prof. Renato Mancuso"),
      "NSF-medium proposal aiming to enable a new class of low cost, power-efficient robots through improving neural network control for under-instrumented limbed robots, exploration hardware/software co-designing techniques for energy-efficient control, and designing efficient learned runtime adaptation techniques on constrained platforms"
    )
  ))+v(2mm),
  block(breakable: false,
  "(TII) Genzero Proposal"+ block[#move(dy: -.75em)[#line(length: 15em, stroke: (dash:"dotted"))]] + v(-4mm)+
  block(
    list(marker: "",
      emph("PIs: Benjamin Lubin, Marco Caccamo, Sandro Pinto, Renato Mancuso"),
      "Joint effort between PhD candidates from Boston University, University of Minho, and Technical University of Munich to develop zero trust framework for multi-party confidential computing. Contributed to proposal development and creation of a successful prototype demonstration.The proposal was accepted and the team was awarded the Best Presentation Award."
    )
  )
  )
)

= Research Positions
#entry("Spring 2022 - Summer 2025", link("https://cpslab.bu.edu/")[Cyber Physical Systems Lab], "Masters Student Researcher", "Boston, MA, USA", (
"Researched and implemented methods for allowing AXI over Ethernet on the Xilinx Zynq Ultrascale+ platform", 
"Assisted in research to integrate Coresight infrastructure for profiling execution phases in a program",
"Assembled and maintained servers (e.g. Ubuntu 24.04 and Proxmox Cluster) to consolidate Xilinx platforms and hardware for facilitated research and collaboration  efforts within the lab",
"Participated in pseudo-Technical Program Committee (TPC) meetings with Lead P.I. to review papers for high tier systems conferences",
"Volunteered to assist or lead students enrolled in directed studies inside of CPS lab."
))
#entry("Summer 2019", link("https://www.holycross.edu/academics/research/student-research/summer-research")[College of the Holy Cross], 
  "Research Assistant", "Worcester, MA, USA", (
  "Gathered and assembled subsystems of the Beam Profile Monitor (BPM) system",
  "Verified electrical tolerances and timings each subsystems",
  "Debugged the BPM system through a gamut of experiments using LabVIEW, oscilliscopes, and multimeters which were logged and relayed to the Lead P.I.",
  "Arranged presentations and discussions weekly on the experiment findings with a different research group"
))

= Notable Research
#v(3mm)
#list(
  marker: ">",
  block(breakable: false,
  "AXI over Ethernet" + block[#move(dy: -.75em)[#line(length: 15em, stroke: (dash:"dotted"))]] + v(-4mm) +
  block(
    list(marker: "",
      "This work revolves around using Programmable Logic to export bus-level memory transactions packed into an Ethernet frame and sent through dedicated low-latency high-bandwidth external optical interfaces. This would allow for methods such as Control Flow Integrity checks, Digital Twinning, and Remote Memory Access to happen transparently without code/kernel instrumentation. In the future, the work will be expanded to handle coherent bus traffic that is architecture agnostic."
    )
  ))+v(2mm),
  block(breakable: false,
  "Burning Fetch Execution: A Framework for Zero-Trust Multi-Party Confidential Computing"+ block[#move(dy: -.75em)[#line(length: 45em, stroke: (dash:"dotted"))]] + v(-4mm)+
  block(
    list(marker: "",
      "This work tackles the gap in existing safeguarding technology by avoiding byte-level decryption until it is immediately fetched by the processor, only to burn it right after. We perform on-the-fetch data decryption, immediately followed by burning, i.e., erasing right after processing cycles. Thus, BFX minimizes the existence of sensitive data in-use. BFX does not demand new processing hardware units nor requires restructuring application software."
    )
  )
  )
)

= Teaching and Mentoring
#entry("Spring 2024 - Summer 2025", link("https://www.bu.edu/")[Boston University], 
       "F1Tenth Directed Study Mentor", "Boston, MA, USA", (
  "Assisted undergraduates with intregating hardware sensors (Lidar, rgb camera, optoflow) and actuators (dc motors, servos, etc) to a Jetson Nano running ROS2",
  "Taught undergraduates the basics of electronic design and electronic components",
  "Ensured the safety of undergraduates when handling high current and sensitive electronics"
))

#entry("Spring 2024", link("https://www.bu.edu/")[Boston University], 
       "Persistence of Vision (PoV) Directed Study Mentor", "Boston, MA, USA", (
  "Guided undergraduates on designing low-level software in C with respect to the underlying Xilinx KV260 platform  with a focus on timing requirements for a PoV Display",
  "Assisted undergraduates to understand and debug the gap between code and physical outputs",
  "Customized the circuit layout in Fusion360 for additional features or corrections from previous student attempts"
))

#entry("Fall 2023", link("https://cra.org/ur2phd/")[Computing Research Association], 
       "UR2PhD Mentor", link("https://www.bu.edu/cs/engage/ur2phd/")[Boston University], (
  "Attended weekly meeting to learn about mentoring skills and developed an inclusive mentoring style",
  "Lead weekly individual and group meetings with four undergraduates to develop hardware/software modules for a Persistence of Vision (PoV) Display",
  "Designed or sourced circuit boards, electrical components, and hardware after verifying compatibility and tolerances in Fusion360",
  "Guided undergraduates on academic practices to search, read, and verify academic research papers"
))

#entry("Spring 2023", link("https://www.bu.edu/")[Boston University], 
       "PL-Ethernet Directed Study Mentor", "Boston, MA, USA", (
  "Taught undergraduates the basics of Vivado Design Suite and functions of FPGAs",
  "Delegated tasks to undergraduates in order to debug and learn about Processor Subsytem, Programmable logic, and ethernet functionality",
  "Arranged weekly meeting to discuss undergraduate findings on particular modules and block designs while evaluating the proceeding goals"
))

= Affiliations
#grid(
  columns: 3,
  align: (center, center, center),
  gutter: 33%,
  [#link("https://cpslab.bu.edu/")[Cyber Physical Systems Lab]],
  [#link("http://alterbytecorp.com/")[Alter Byte Corp]],
  [#link("https://neobotics.org/")[Neobotics]]
)
#v(1mm)



= Professional Experience
#entry("June - July 2025", link("https://www.neobotics.org/")[Neobotics], 
       "Temp Embedded Engineer", "Boston, MA, USA", (
  "Collaborated with a cross-functional team to design system architecture for an educational autonomous driving platform through prototyping, research, and strategic planning.",
  "Conducted comprehensive research on integrated circuits, evaluated technical specifications, developed a central KiCad project, and communicated findings to stakeholders.",
  "Lead procurement efforts by developing complete parts lists and defining system architecture for a full-scale autonomous driving vehicle, ensuring technical feasibility and integration requirements were met."
))


#entry("2019-2020", link("https://www.holycross.edu/academics/programs/theatre-and-dance/opportunities/alternate-college-theatre")[Alternate College Theatre], 
       "Student Technical Director", "Worcester, MA, USA", (
  "Collaborated with the college technical director and student scene designer to construct sets",
  "Created schematics to follow when cutting lumber and assembling pieces of the set",
  "Coordinated groups of students on tasks to assemble and furnish sets",
  "Communicated with directors and set designers on progress of set and accommodated any desired details or changes"
))

#entry("2019-2020", link("https://www.holycross.edu/academics/programs/theatre-and-dance/facilities")[College of the Holy Cross Fenwick Theatre], 
       "Shop Assistant", "Worcester, MA, USA", (
  "Assisted in creating sets for the department plays by following a schematic, manufacturing, and assembling components, and compensating for any error along the way",
  "Guided assistants on correct use of power tools and provided advanced techniques to address certain cases",
  "Relayed instructions from Technical Director to sub group(s)",
  "Provided assistance to other technical teams within the theatre"
))

#entry("Fall 2017-2019", link("https://www.holycross.edu/campus-life/housing")[College of the Holy Cross], 
       "Resident Assistant", "Worcester, MA, USA", (
  "Acted as a resource to and ensured the safety of 38 students in their residence hall",
  "Planned events with Resident Assistant team members for residents and building",
  "Performed safety checks and engaged with residents throughout the semester",
  "Relayed information bi-weekly regarding the dormitory and residents in a concise manner to dormitory supervisor"
))



= Honors & Awards

#list(marker: "•",
  "Holy Cross Grant",
  "2024 (TII) GENZERO Workshop Best Presentation Award"
)

= Skills
#block(breakable: false)[
#list(marker: "•", 
  [*Programming:* C, C++, Java, Python, Golang, SQL, Scala, SpinalHDL, Nix],
  [*Design:* SpinalHDL, Verilog, CAD, PCB design, Carpentry, Fabrication, Machining],
  [*Machnine Learning:* Tflite-micro, Openvino],
  [*Hardware Debugging:* Xilinx Integrated Logic Analyzer, ARM Coresight, Circuit Debugging],
  [*System Administration:* Network Architecture, Proxmox, Incus, Kubernetes, Docker, Git, Cluster Management]
)
]
= Languages
#grid(
  columns: 3,
  align: (center, center, center),
  gutter: 33%,
  [*English* [Native]],
  [*Portuguese* [Fluent]],
  [*Spanish* [Fluent]]
)

= References
_References available upon request._
]