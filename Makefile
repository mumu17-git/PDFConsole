all: pdfconsole.pdf

install-deps:
	pip3 install pdfrw

pdfconsole.pdf: README.pdf generate_pdfconsole.py pdfconsole.js
	python3 generate_pdfconsole.py

run-pdfconsole.pdf: pdfconsole.pdf
	"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" pdfconsole.pdf

README.pdf: README.md
	pandoc README.md --variable urlcolor=cyan -o README.pdf

clean:
	rm -f pdfconsole.pdf
	rm -f README.pdf
