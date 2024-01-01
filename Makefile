.PHONY: examples

CC = xelatex
EXAMPLES_DIR = ./

RESUME_DIR = ./resume-sections/ 
CV_DIR = ./cv-sections/
RESUME_SINGLE_DIR = ./resume-single-sections/

RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
RESUME_SINGLE_SRCS = $(shell find $(RESUME_SINGLE_DIR) -name '*.tex')

# examples: $(foreach x, resume resume-single cv, $x.pdf)

examples: $(foreach x, resume , $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/Nimendra-Resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv.pdf: $(EXAMPLES_DIR)/Nimendra-CV.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

resume-single.pdf: $(EXAMPLES_DIR)/Nimendra-Resume-single.tex $(RESUME_SINGLE_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
