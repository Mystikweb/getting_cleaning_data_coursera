contact_page <- url("http://biostat.jhsph.edu/~jleek/contact.html")
contact_content <- readLines(contact_page, n = 100)
close(contact_page)

