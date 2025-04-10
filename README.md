# Cynkrablog Extension For Quarto

An Extension that helps to write a blog post that complies with the style guide of the [cynkra blog](https://cynkra.com/blog).

## Installing

_TODO_: move to cynkra Github org

```bash
quarto use template schochastics/cynkrablog
```

This will install the extension and create an example qmd file that you can use as a starting place for your post.

**Note**: This only installs the extension in the current working directory and not globally. Each blog post should always start with running the `quarto use template` command

## Using

The template is quite opinionated and does not allow much degrees of freedom to make the posts look and behave consistently

It implements the following: 

- the alt text is properly set in images via filters
- headers are adjusted so that the max header is a level 2 (`##`) header
- inject `class="tw:lg:w-[70%]" loading="lazy"` if an image has a width attribute (needs to be revised)
- a shortcode `{{< code-fold >}}` that can be placed in front of code chunks to fold the code later on the blog.
- runs `styler` on all code chunks
