#import "@preview/basic-resume:0.2.9": *

#let name = "Yin (Stanley) Cheung"
#let location = "Vancouver, BC"
#let email = "yinstanleycheung@gmail.com"
#let github = "github.com/cheuyin"
#let personal-site = "stanleycheung.com"

// Replace these for each application.
#let letter-date = datetime.today().display("[month repr:long] [day], [year]")
#let company = "Company Name"
#let company-location = "City, Province"
#let greeting = "Dear Hiring Manager,"

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

#set document(title: name + " Cover Letter")
#set par(justify: true, spacing: 1em)

#v(0.75em)

#letter-date

#v(0.35em)

#company \
#company-location

#v(0.6em)

#greeting

Replace this opening with a hook about the company or role, then name the position. Do not send this template.

Replace this paragraph with your strongest match to their top requirement, including a specific result from the resume.

Replace this paragraph with additional value, culture fit, and any honest gap handling.

I would welcome the chance to discuss how I could contribute. Thank you for considering my application.

Sincerely,

#name
