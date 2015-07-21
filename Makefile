all:
	@echo try make serve

serve: rm-slideshow slideshow hovercraft

render: rm-slideshow slideshow render-hovercraft seddy

slideshow:
	bash mkslideshow > slideshow

render-hovercraft:
	hovercraft --css style.css slideshow ./render

hovercraft:
	hovercraft --css style.css --port 8000 slideshow

rm-slideshow:
	rm -f slideshow

mogrify:
	find images -follow -iname '*.jpg' |xargs -n1 -I{} mogrify {} -strip -quality 55 -resize 1920x1080\>  {}
	find images1 -follow -iname '*.jpg' |xargs -n1 -I{} mogrify {} -strip -quality 55 -resize 1920x1080\>  {}

seddy:
	sed -i 's/234876/2000" data-width="1920" data-height="1080"/g' ./render/index.html
