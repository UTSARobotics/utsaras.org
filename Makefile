all: utsaras.org.tar.gz upload

utsaras.org.tar.gz: index.html robots.txt ras_gray.png
	 tar -cvz $^ > $@

upload: utsaras.org.tar.gz
	hut pages publish -d utsaras.org utsaras.org.tar.gz

clean:
	rm -f utsaras.org.tar.gz

.PHONY: upload
