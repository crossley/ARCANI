# Makefile to convert Rmd files to HTML

# Define variables
RMD_FILES = $(wildcard *.Rmd)
HTML_FILES = $(RMD_FILES:.Rmd=.html)

# Default rule
all: $(HTML_FILES)

# Rule for converting Rmd to HTML
%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<')"

# Clean rule to remove HTML files
clean:
	rm -f $(HTML_FILES)

