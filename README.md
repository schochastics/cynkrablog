# Cynkrablog Extension For Quarto

An Extension that helps to comply with the style guide of the cynkra blog.

## Installing

_TODO_: Replace the `<github-organization>` with your GitHub organization.

```bash
quarto add <github-organization>/cynkrablog
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

It implements the following: 

- the alt text is properly set in images
- headers are adjusted so that the max header is a level 2 (##) header
- inject `class="tw:lg:w-[70%]" loading="lazy"` if an image has a width attribute

Not included but helpful tips:

To make code foldable, put this in front of the code chunk in the `qmd` file:
```
::::{.cynkra-collapsible-block}
::::

```

This should give

```
<div class="cynkra-collapsible-block"></div>
```

in the `md` output.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

