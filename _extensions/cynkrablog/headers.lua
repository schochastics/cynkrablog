local headers = {}

function Header(el)
  table.insert(headers, el)
  return nil
end

function adjust_levels()
  local has_level1 = false
  local has_level2 = false
  local min_level = 6

  for _, h in ipairs(headers) do
    if h.level == 1 then
      has_level1 = true
    end
    if h.level == 2 then
      has_level2 = true
    end
    if h.level < min_level then
      min_level = h.level
    end
  end

  local shift = 0
  if has_level1 then
    shift = 1
  elseif not has_level1 and not has_level2 and min_level == 3 then
    shift = -1
  end

  local blocks = {}
  for _, h in ipairs(headers) do
    h.level = math.min(math.max(h.level + shift, 1), 6) 
    table.insert(blocks, h)
  end

  return blocks
end

return {
  { Header = Header },
  { Pandoc = function(doc)
      local adjusted_headers = adjust_levels()
      -- Replace only the headers in the document
      local new_blocks = {}
      local i = 1
      for _, b in ipairs(doc.blocks) do
        if b.t == "Header" then
          table.insert(new_blocks, adjusted_headers[i])
          i = i + 1
        else
          table.insert(new_blocks, b)
        end
      end
      doc.blocks = new_blocks
      return doc
    end
  }
}