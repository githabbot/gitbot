do

-- Recursive function
local function getRandomButts(attempt)
  attempt = attempt or 0
  attempt = attempt + 1

  local res,status = http.request("http://api.obutts.ru/noise/1")

  if status ~= 200 then return nil end
  local data = json:decode(res)[1]

  -- The OpenBoobs API sometimes returns an empty array
  if not data and attempt <= 3 then
    print('Cannot get that butts, trying another one...')
    return getRandomButts(attempt)
  end

  return 'http://media.obutts.ru/' .. data.preview
end

local function getRandomBoobs(attempt)
  attempt = attempt or 0
  attempt = attempt + 1

  local res,status = http.request("http://api.oboobs.ru/noise/1")

  if status ~= 200 then return nil end
  local data = json:decode(res)[1]

  -- The OpenBoobs API sometimes returns an empty array
  if not data and attempt < 10 then 
    print('Cannot get that boobs, trying another one...')
    return getRandomBoobs(attempt)
  end

  return 'http://media.oboobs.ru/' .. data.preview
end

local function run(msg, matches)
  local url = nil
  
  if matches[1] == "salam" then
    return 'saaalaaaam👋'
  end

  if matches[1] == "shayan" then
    return 'Shayan123Hacker'
  end
  
    if matches[1] == "hamed" then
    return 'my sudo user :))'
  end
  
    if matches[1] == "omid" then
    return 'My sudo user :))'
  end
  
    if matches[1] == "شایان" then
    return 'Shayan123Hacker'
  end
  
    if matches[1] == "امید" then
    return 'My sudo user :))'
  end
  
    if matches[1] == "slm" then
    return 'Doros salam bede tanbal -_-'
  end
  
      if matches[1] == "سلام" then
    return '👋سلااامممممم :))'
  end
  
      if matches[1] == "khoobi?" then
    return 'Are khoobam to chetori?'
  end

    if matches[1] == "خوبی؟" then
    return 'آره خوبم تو چطوری؟'
  end
  
      if matches[1] == "admin kie?" then
    return '@shayan123hacker'
  end
  
      if matches[1] == "ادمین کیه؟" then
    return '@shayan123hacker'
  end

    if matches[1] == "developer kie?" then
    return '@shayan123hacker'
  end

    if matches[1] == "گروه چنده؟" then
    return '5t'
  end

    if matches[1] == "gp chande?" then
    return '5t'
  end
  
      if matches[1] == "bye" then
    return 'Bye'
  end
  
      if matches[1] == "بای" then
    return 'خدافظ'
  end

  if url ~= nil then
    local receiver = get_receiver(msg)
    send_photo_from_url(receiver, url)
  else
    return 'Error' 
  end
end

return {
  description = "Gets a random boobs or butts pic", 
  usage = {
    "!boobs: Get a boobs NSFW image. ًں”‍",
    "!butts: Get a butts NSFW image. ًں”‍"
  },
  patterns = {
    "^salam$",
    "^shayan$"
    "^شایان$"
    "^امید$"
    "^slm$"
    "^سلام$"
    "^ادمین کیه؟$"
    "^admin kie?$"
    "^developer kie?$"
    "^خوبی$"
    "^khoobi?$"
    "^omid$"
    "^گروه چنده؟$"
    "^gp chande?$"
    "^hamed$"
  }, 
  run = run 
}

end
