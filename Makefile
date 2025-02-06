all: submodule utsaras.org.tar.gz upload

submodule:
	git submodule update --init

utsaras.org.tar.gz: index.html robots.txt ras_gray.png workshops
	tar -cvz $^ > $@

upload: utsaras.org.tar.gz
	hut pages publish -d utsaras.org utsaras.org.tar.gz

clean:
	rm -f utsaras.org.tar.gz

.PHONY: upload submodule