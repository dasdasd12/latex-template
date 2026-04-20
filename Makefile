# 集创赛作品报告 LaTeX 模板
# 编译方式：make 或 make pdf

PDFNAME = main

.PHONY: all pdf clean view

all: pdf

pdf:
	xelatex $(PDFNAME).tex
	xelatex $(PDFNAME).tex  # 运行两次以生成目录

clean:
	rm -f $(PDFNAME).aux $(PDFNAME).log $(PDFNAME).out $(PDFNAME).toc $(PDFNAME).nav $(PDFNAME).snm

view: pdf
	open $(PDFNAME).pdf

distclean: clean
	rm -f $(PDFNAME).pdf
