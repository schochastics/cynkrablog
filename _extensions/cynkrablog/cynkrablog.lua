function Image(el)
  if el.attributes["fig-alt"] then
    el.attributes["alt"] = el.attributes["fig-alt"]
    el.attributes["fig-alt"] = nil
  end
  return el
end