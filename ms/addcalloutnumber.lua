local id = 1
function Callout(callout)
  if callout.type == "box" then
    if callout.attr.identifier ~= "" then
      -- callout already has an id
      return nil
    end
    callout.attr.identifier = "box-unique" .. tostring(id)
    id = id + 1
  end
  return quarto.Callout(callout)
end
