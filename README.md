# UTSA RAS Website

First, build the tarball with all website files:

    tar -cvz index.html ras_gray.png robots.txt > utsaras.org.tar.gz

Next, upload the website

    hut pages publish -d utsaras.org utsaras.org.tar.gz

# other

Dump icon data as base64 from png:

    openssl base64 -in ras_icon.png

