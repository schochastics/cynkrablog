---
title: Cynkrablog Example
authors:
  - name: David Schoch
  - uid: david.schoch
excerpt: |
  A paragraph that is the excerpt
date: 2025-04-09T00:00:00.000Z
og_image: og_image.jpg
format: cynkrablog-gfm
---


<p class="lead">This paragraph will be the lead paragraph. Do not add more than one paragraph in this block.</p>

To get started, add a lead paragraph above and delete the help text
below. Happy blogging

## Correct Heading

The blogs maximal header is not allowed to be `#` or `###` and should
always start with `##`. A filter makes sure this is the case.

## Image alt

A filter produces correct alt tags for images in gfm format for the
cynkra blog. Currently, quarto turns `fig-alt = "Alt text"` into
`data-fig-alt` instead of just `alt`.

<img src="https://placecats.com/300/200.png" class="tw:lg:w-[70%]"
alt="A placeholder image" loading="lazy" width="300" height="200" />

``` r
plot(1:10)
```

<img src="plots/figure-test1-1.png" class="tw:lg:w-[70%]" alt="testing"
loading="lazy" width="500" height="400" />

## Image class

Currently, there is also a filter that adds
`class="tw:lg:w-[70%]" loading="lazy"` to all images for better
performances. This needs to be reevaluated

## Code fold

If you want to make a code block collapsible, add the shortcode
`<div class="cynkra-collapsible-block"></div>` in front of a code chunk.

\<div class="cynkra-collapsible-block"\>\</div\>

``` r
x <- 2 - 1
# test
```

## og_image

Dont forget to add a “cover image” for your post.
