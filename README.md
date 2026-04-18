# CV Template
Typst template to create a CV.

## How to use
- Import CV.typ file in your own typst file.
- call the CV function from the imported template with the path to the yaml file with necessary information

## Outline
The format expects 4 categories of information: general, education, experience,
and skills. Each of them has a specific format that has to be kept. For field
values with commas, use quotes. The repo also contains an example yaml file.

### General info
Top level parts of the yaml file. The format requires:
- name
- dob (date of birth)
- city
- email
- phone
- imagePath (file path to the image displayed on the CV)

### Education
Education is a list of dictionaries with keywords:
- start (start date)
- end (end date)
- name (name of the place)
- desc (additional info)

### Experience
Experience is a list of dictionaries with keywords:
- start (start date)
- end (end date)
- place (name of the company)
- role
- desc

### Skills
Skills section is a list
