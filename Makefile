.PHONY: examples

CC = xelatex
EXAMPLES_DIR = pdf
RESUME_DIR = pdf/resume
# CV_DIR = pdf/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
# CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/Nimendra-Resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# cv.pdf: $(EXAMPLES_DIR)/Nimendra-CV.tex $(CV_SRCS)
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
