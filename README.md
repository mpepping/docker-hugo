# mpepping/hugo


[Hugo](https://gohugo.io) in a container.
To get up and running quickly;

Pull the image:

    $ docker pull mpepping/hugo

Initialize a new website:

    $ mkdir mysite && cd mysite
    $ docker run --rm -v $PWD:/src mpepping/hugo new site .

Add a shell alias for ease of use:

    $ alias hugo="docker run -it --rm -v $PWD:/src -p 1313:1313 mpepping/hugo"

Create a new post:

    $ hugo new post/mypost.md

Run locally:

    $ hugo server -w --baseUrl="http://docker:1313" --bind=0.0.0.0  
