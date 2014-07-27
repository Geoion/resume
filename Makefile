default: chen-cn.pdf chen-en.pdf

chen-cn.pdf: chen-cn.tex
	xelatex $^

chen-en.pdf: chen-en.tex
	xelatex $^ 

clean:
	rm -rf *.aux *.out *.log
