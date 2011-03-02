star_rating
===========

This is a filter plugin for [Jekyll](http://jekyllrb.com/) that will display a rating as a series of nought to five star images.

Installation
------------
1. Copy `star_rating.filter.rb` to your `_plugins` directory.
2. Copy the contents of `images` to your `images` directory.

Configuration
-------------
If you want to put the images in an alternative directory then you will need to alter `Star_imagesLoc` in `star_rating.filter.rb` to point to the correct location.

How to use it
-------------
If you had a variable such as `page.rating` then you could put `{{ page.rating|star_rating }}` in your text
and the relevant number of images would be displayed.

Example/Testing
---------------
To see this working run `jekyll --server` in the root directory of this repository and point your browser to
`http://localhost:4000`

License
-------
Copyright (c) 2011, Lawrence Woodman  
This software is licensed under an MIT License.  Please see the file, LICENSE.md, for details.

The images are alterations from originals at [stackoverflow](http://stackoverflow.com/questions/1987524/turn-a-number-into-star-rating-display-using-jquery-and-css) and are licensed under 
the [Creative Commons Attribution-ShareAlike 2.5 Generic License](http://creativecommons.org/licenses/by-sa/2.5/).
