local get_current_file_name = function()
  local name = vim.fn.expand "%:t:r"
  return name ~= "" and name or "Component"
end

return get_current_file_name
