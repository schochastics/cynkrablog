function Div(el)
  if el.classes:includes("lead") then
    -- Convert blocks to plain text (safely, using stringify)
    local text = pandoc.utils.stringify(el)
    local raw_html = string.format('<p class="lead">%s</p>', text)
    return pandoc.RawBlock("html", raw_html)
  end
end
