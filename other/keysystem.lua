_G.Key = "Key Here"

local ValidKeys = "VALID KEY HERE" or "VALID KEY HERE" --add more OR and quotation marks for more validkeys
if _G.Key == ValidKeys then
    print("Authorized")
    --Loadstring Here or your other shit
    else
    print("Unauthorized")
end
--Delete code below if you don't want webhook logging | if you don't know wtf your doing just delete code below this line
local url = "Webhook here"
local data = {
   ["content"] = _G.Key, --Could not get player name to work so you can do it yourself
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
