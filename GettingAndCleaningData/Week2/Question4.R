contact_page <- url("http://biostat.jhsph.edu/~jleek/contact.html")
contact_content <- readLines(contact_page, n = 100)
close(contact_page)

char_count <- sapply(contact_content[c(10,20,30,100)], nchar)