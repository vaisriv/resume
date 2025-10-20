# resume
![GitHub Repo Release](https://img.shields.io/github/v/release/vaisriv/resume) ![Github Repo Top Language](https://img.shields.io/github/languages/top/vaisriv/resume) ![GitHub Repo License](https://img.shields.io/github/license/vaisriv/resume)

- This repository holds my resume, specifically the file itself and the [Typst](https://typst.app/) source files to generate it
- I have set this repository up in such a way where it can be used as a template repository for your own resume
- **PDF:** The latest version of my resume is stored in the [repo's releases](https://github.com/vaisriv/resume/releases/latest)

## Build locally

### General Steps

1. Install the [Typst CLI](https://typst.app/open-source/#download)
2. ```bash
   typst compile src/resume.typ ./resume.pdf
   ```

### Building With Nix

- If you use Nix, this repo includes a flake with a [devshell](https://numtide.github.io/devshell/) setup. You can drop into the nix-devshell and build from there:
- ```bash
  nix develop

  # run the live-preview server
  preview

  # or build the resume file and copy it to the current directory
  nix run
  ```

---

## CI / Releases

- A GitHub Actions workflow compiles the resume and creates a **versioned GitHub Release** with the PDF attached whenever you push to `main`
- Versioning and changelogs are powered by [semantic-release](https://semantic-release.gitbook.io/semantic-release/) using [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)

---

## Notes

- The PDF uploaded to the Release is considered the canonical artifact
- If you rename the entry `.typ` file or move fonts, make sure to update the workflow and commands accordingly

---

## Acknowledgements

- This resume was made using the [clickworthy-resume](https://github.com/AbdullahHendy/clickworthy-resume/) template for typst, written by [Abdullah Hendy](https://www.linkedin.com/in/abdullah-hendy/)
- Inspiration and a desire to use Typst was instilled in me by [Sylvan Franklin](https://www.youtube.com/@sylvanfranklin/). Without him, I would not know (nor care) about Typst
- The Typst language itself, with its macros and function definitions, is critical to this resume, and you can check it out (and contribute to it) yourself [here](https://typst.app/)
