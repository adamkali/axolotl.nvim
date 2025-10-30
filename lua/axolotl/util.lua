local M = {}

M.bg = "#000000"
M.fg = "#ffffff"

function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

function M.rgb_to_hex(r, g, b)
  return string.format("#%02x%02x%02x", r, g, b)
end

function M.darken(hex, amount)
  local r, g, b = M.hex_to_rgb(hex)
  r = math.max(0, math.floor(r * (1 - amount)))
  g = math.max(0, math.floor(g * (1 - amount)))
  b = math.max(0, math.floor(b * (1 - amount)))
  return M.rgb_to_hex(r, g, b)
end

function M.lighten(hex, amount)
  local r, g, b = M.hex_to_rgb(hex)
  r = math.min(255, math.floor(r + (255 - r) * amount))
  g = math.min(255, math.floor(g + (255 - g) * amount))
  b = math.min(255, math.floor(b + (255 - b) * amount))
  return M.rgb_to_hex(r, g, b)
end

function M.brighten(hex, amount)
  local r, g, b = M.hex_to_rgb(hex)
  r = math.min(255, math.floor(r * (1 + amount)))
  g = math.min(255, math.floor(g * (1 + amount)))
  b = math.min(255, math.floor(b * (1 + amount)))
  return M.rgb_to_hex(r, g, b)
end

function M.mix(hex1, hex2, amount)
  local r1, g1, b1 = M.hex_to_rgb(hex1)
  local r2, g2, b2 = M.hex_to_rgb(hex2)
  
  local r = math.floor(r1 * (1 - amount) + r2 * amount)
  local g = math.floor(g1 * (1 - amount) + g2 * amount)
  local b = math.floor(b1 * (1 - amount) + b2 * amount)
  
  return M.rgb_to_hex(r, g, b)
end

function M.desaturate(hex, amount)
  local r, g, b = M.hex_to_rgb(hex)
  
  -- Calculate grayscale value using luminance formula
  local gray = math.floor(0.299 * r + 0.587 * g + 0.114 * b)
  
  -- Mix original color with gray
  r = math.floor(r * (1 - amount) + gray * amount)
  g = math.floor(g * (1 - amount) + gray * amount)
  b = math.floor(b * (1 - amount) + gray * amount)
  
  return M.rgb_to_hex(r, g, b)
end

return M