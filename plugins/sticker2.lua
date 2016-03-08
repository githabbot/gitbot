do

local function run(msg, matches)
  if matches[1] == "make" then
      local receiver = get_receiver(msg)
      send_document(receiver, "./sticker/"..msg.from.id..".webp", ok_cb, false)
      return 'by @shayan123hacker :)) '
  end
end

return {
  patterns = {
  "^[!/](make)$",
  },
  run = run
}
end
