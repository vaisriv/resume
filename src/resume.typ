#import "@preview/clickworthy-resume:1.0.0": *

// Personal Information
#let name = "Vai Srivastava"
#let email = "vai.sriv@icloud.com"
#let github = "github.com/vaisriv"
#let linkedin = "linkedin.com/in/vaisriv"
#let contacts = (
    [#link("mailto:" + email)[#email]],
    [#link("https://" + github)[#github]],
    [#link("https://" + linkedin)[#linkedin]],
    [#link("https://www.openstreetmap.org/relation/133393")[College Park, MD 20740]],
)

// Professional Summary
#let summary = "Highly motivated Aerospace undergraduate researcher at UMD, specializing in high-performance computing and innovative propulsion systems. Proven expertise in MATLAB, Python, R, C++ to optimize simulations and designs, demonstrating strong analytical skills, and excellent communication."

// Resume configuration
#let theme = rgb("#26428b")
#let font = "New Computer Modern"
#let fontSize = 10pt
#let lang = "en"
#let margin = (
    top: 1cm,
    bottom: 0cm,
    left: 1cm,
    right: 1cm,
)

// Resume Header and configuration
#show: resume.with(
    author: name,
    contacts: contacts,
    summary: summary,
    theme-color: theme,
    font: font,
    font-size: fontSize,
    lang: lang,
    margin: margin,
)

// Education
= Education
#edu(
    institution: "University of Maryland",
    date: "May 2026 (Expected)",
    location: "College Park, MD",
    degrees: (
        ("B.S.", "Aerospace Engineering - Space Track"),
    ),
    // gpa: "3.29",
    extra: "Coursework: Fluid/Gas/Thermodynamics, Control Systems, Systems Reliability",
)

// Experience
= Experience
#exp(
    title: "Undergraduate Researcher",
    organization: "UMD Department of Aerospace: " + link("https://sppl.umd.edu")[Space Power and Propulsion Lab],
    date: "Jan. 2025 - May 2025",
    location: "College Park, MD",
    details: [
        - Designing and building a prototype magnetic nozzle for UMD's direct-drive fusion and space propulsion research
        - Iterating on current helium-based physics model to optimize magnetic nozzle efficiency
        - Planning a testing suite to measure viability of magnetic nozzle prototype in space exploration applications
    ],
)
#exp(
    title: "AEROS Scholar & Undergraduate Researcher",
    organization: "UMD Department of Aerospace: " + link("http://www.agrc.umd.edu")[Alfred Gessow Rotorcraft Center],
    date: "Jun. 2024 - Dec. 2024",
    location: "College Park, MD",
    details: [
        - Optimized Computational Fluid Dynamics Simulation software to better leverage GPU technology in UMD's High Performance Computing Clusters
        - Collaborated with my research group on Computational Fluid Dynamics Simulations utilizing various flow models to improve aerodynamic geometries
        - Documented codebase to streamline onboarding of future researchers
    ],
)
#exp(
    title: "Team KIWI Project Co-Lead",
    organization: "UMD Department of Aerospace: " + link("https://bpp.umd.edu")[Nearspace - Balloon Payload Program],
    date: "Sep. 2022 - Jan. 2024",
    location: "College Park, MD",
    details: [
        - Led the design for a proof-of-concept for an energy recovery system for near-space ascension scientific payloads
        - Contributed to various launch processes including balloon tracking, payload tie-on, and management
        - Participated in multiple launch operations for data collection and experimentation
    ],
)
#exp(
    title: "Undergraduate Researcher",
    organization: "UMD Department of Agricultural & Resource Economics: " + link("https://www.fire.umd.edu/sa")[FIRE - Sustainability Analytics],
    date: "Jun. 2024 - Dec. 2024",
    location: "College Park, MD",
    details: [
        - Conducted research as part of a multi-year project focusing on electric grids and carbon emissions
        - Analyzed and modeled multiple US Energy Information Administration and US Environmental Protection Agency datasets using R and Python
    ],
)

// Projects and Publications
= Projects/Publications
#pub-list(
    bib: bibliography("./publications.yml"),
    style: "ieee"
)
#exp(
    title: link(
        "https://github.com/vaisriv/kaluza-kb",
    )[Custom Keyboard Design and Manufacturing],
    date: "Mar. 2021 - Oct. 2022",
    details: [
        - Designed and built client-customized keyboard cases using AutoCAD and PCB schematics and layout using KiCAD
        - Developed C-firmware for keyboards and OLED displays
        - Learned design and manufacturing processes for personal electronics hardware
    ],
)

// Awards
= Affiliations/Awards
#exp(
    title: "UMD President's Scholarship",
    date: "Fall 2022 - Present",
    details: [
        - University of Maryland Four-Year Merit Scholarship
    ],
)
#exp(
    title: "Alpha Lambda Delta Honor Society",
    date: "Spring 2023 - Present",
    details: [
        - University of Maryland Chapter of National *ΑΛΔ* Honor Society
    ],
)
#exp(
    title: "UMD Clark School of Engineering Dean's List",
    date: "Fall 2022, Spring 2024",
)

// Skills
= Skills
#skills((
    (
        "Software",
        (
            link("https://www.autodesk.com/products/fusion-360")[Fusion 360],
            link("https://www.kicad.org")[KiCad],
            link("https://www.autodesk.com/products/autocad")[AutoCAD],
            link("https://git-scm.com")[Git],
            link("https://kernel.org")[Linux],
        ),
    ),
    (
        "Languages",
        (
            link("https://www.mathworks.com/products/matlab.html")[MATLAB],
            link("https://www.latex-project.org")[LaTeX],
            link("https://www.typst.app")[Typst],
            link("https://www.python.org")[Python],
            link("https://www.r-project.org")[R],
            link("https://julialang.org")[Julia],
            link("https://www.c-language.org")[C/C++],
            link("https://www.typescriptlang.org")[TypeScript],
            link("https://www.rust-lang.org")[Rust],
            link("https://nixos.org")[Nix],
        ),
    ),
))
