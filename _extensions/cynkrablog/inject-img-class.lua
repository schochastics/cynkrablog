local inject_image_class = true

function Image(img)
  if inject_image_class then
    if img.attributes and img.attributes.width then
      -- Inject class; append if other classes exist
      local classes = img.classes or {}
      table.insert(classes, "tw:lg:w-[70%]")
      img.classes = classes

      img.attributes = img.attributes or {}
      img.attributes.loading = "lazy"
    end
  end
  return img
end
