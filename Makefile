#makefile build resume files 

all: resume.pdf

install: 
	apt-get -y install texlive  
	apt-get -y install texlive-latex-extra  
	apt-get -y install texlive-xetex
	apt-get -y install texlive-fonts-extra  

remove:
	apt-get -y remove texlive  
	apt-get -y remove texlive-latex-extra  
	apt-get -y remove texlive-xetex
	apt-get -y remove texlive-fonts-extra  

resume.pdf: resume.tex
	xelatex $^

clean:
	rm -rf *.aux *.out *.log 
