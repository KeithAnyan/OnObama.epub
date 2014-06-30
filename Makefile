
ALL : OnObama.epub OnObama.mobi OnObama.pdf

OnObama.epub: 
	rm -f OnObama.epub
	zip -X0 OnObama.epub mimetype
	zip -Xur9D OnObama.epub META-INF/* OEBPS/*

OnObama.mobi: OnObama.epub
	rm -f OnObama.mobi
	ebook-convert OnObama.epub OnObama.mobi

OnObama.pdf: OnObama.epub
	rm -f OnObama.pdf
	ebook-convert OnObama.epub OnObama.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

