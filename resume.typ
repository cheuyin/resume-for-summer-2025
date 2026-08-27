#import "@preview/basic-resume:0.2.9": *

#let name = "Yin (Stanley) Cheung"
#let location = "Vancouver, BC"
#let email = "yinstanleycheung@gmail.com"
#let github = "github.com/cheuyin"
#let personal-site = "stanleycheung.com"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  personal-site: personal-site,
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

== Education

#edu(
  institution: "The University of British Columbia",
  location: "Vancouver, BC",
  dates: "Expected May 2027",
  degree: "B.Sc. Computer Science | Average 88%",
  consistent: true,
)
- *Awards:* Dean's List (2023, 2025); Charles & Jane Banks Scholarship (2024)

== Experience

#work(
  title: "Software Engineer Intern",
  location: "Vancouver, BC",
  company: "VoltSafe Inc. | TypeScript, Express.js, PostgreSQL, AWS, React",
  dates: dates-helper(start-date: "January 2024", end-date: "July 2024"),
)
- Shipped RBAC for an internal admin dashboard with AWS Cognito so staff only reached the routes and data their role allowed.
- Built an S3-backed file API for a marina management app so document and image uploads did not go through the app server.
- Cut the marina app JS bundle 22% by pruning unused static assets after a Lighthouse pass.
- Dockerized a Prometheus monitoring service for CPU, RAM, and disk on 7+ EC2 web and database servers; the React client polled a REST API with React Query.

== Projects

#generic-one-by-two(
  left: [*CreateYourStory.ai* | Python, FastAPI, React, SQLite (#link("https://github.com/cheuyin/createyourstory.ai")[GitHub])],
  right: dates-helper(start-date: "June 2026", end-date: "July 2026"),
)
- Built a FastAPI background-job pipeline for LLM and image generation with persisted job status so the React client could poll instead of blocking on one long request.
- Validated model output as a Pydantic story graph (nodes, choices, endings) before saving, so broken generations failed closed instead of writing junk to SQLite.
- Added JWT/Argon2 auth, guest sessions, and ownership checks so saved stories stayed private to their owner.

#generic-one-by-two(
  left: [*AutoDater* | TypeScript, Obsidian API (#link("https://community.obsidian.md/plugins/autodater")[Plugin])],
  right: dates-helper(start-date: "May 2025", end-date: "July 2026"),
)
- Shipped an Obsidian community plugin that writes Created/Updated dates into note frontmatter (\~450 downloads).
- After a Reddit post (\~33k views), added date-format options, folder exclusions, and renameable property labels from user feedback; a 6-second debounce avoids extra writes while typing.

#generic-one-by-two(
  left: [*Local AI Coding Agent* | Python, Gemini API (#link("https://github.com/cheuyin/ai-agent-python")[GitHub])],
  right: dates-helper(start-date: "May 2026", end-date: "June 2026"),
)
- Built a Gemini agent loop that calls sandboxed file tools (read, write, run, delete) for up to 20 rounds until the task finishes.
- Validated every file-tool path against the working directory and rejected any that would escape it, so a bad tool call could not reach the rest of the filesystem.

== Skills
- *Languages:* Python, TypeScript, SQL
- *Frameworks:* FastAPI, Express.js, React
- *Other:* PostgreSQL, Docker, AWS, Prometheus, Linux, Git
- *Certifications:* AWS Certified Cloud Practitioner
