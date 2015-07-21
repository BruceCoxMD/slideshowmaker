all:
	@echo try make serve

serve: slideshow hovercraft

slideshow:
	bash mkslideshow > slideshow

hovercraft:
	hovercraft -p 8000 slideshow
