all:
	@echo try make serve

serve: rm-slideshow slideshow hovercraft

slideshow:
	bash mkslideshow > slideshow

hovercraft:
	hovercraft -p 8000 slideshow

rm-slideshow:
	rm slideshow
