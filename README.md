# mpepping/hugo

[![](https://images.microbadger.com/badges/image/mpepping/hugo.svg)]

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

    $ hugo server -w --baseUrl="http://$DOCKERHOST:1313" --bind=0.0.0.0  

Now, open <http://$DOCKERHOST:1313/> to see your Hugo website.

To build the site for publication:

    $ hugo --baseUrl="http://www.mysite.com"

The content of the `public` folder can be uploaded to a webservice that serves
static content.
