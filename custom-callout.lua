function Div(el)
  if div.classes:includes("mycustom") then
    -- Create a new Callout AST node
    local callout = quarto.Callout {
      type = "note", -- Or any other standard callout type for base styling
      title = "My Custom Box", -- Default title, can be overridden in YAML
      icon = "fa-star", -- Default icon, can be overridden in YAML
      content = el.content -- The content of your custom callout
    }

    -- Apply custom styling via attributes if needed (e.g., for color)
    -- This might involve adding a custom class to the callout for CSS styling
    callout.attr = pandoc.Attr(nil, {"mycustom-callout"}, {
      style = "background-color: #4CAF50; border-color: #4CAF50;" -- Example inline style
    })

    return callout
  end
end
