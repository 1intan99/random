local MORSE_TABLE = {
  [".----"] = "1", ["..---"] = "2", ["...--"] = "3", ["....-"] = "4",
  ["....."] = "5", ["-...."] = "6", ["--..."] = "7", ["---.."] = "8",
  ["----."] = "9", ["-----"] = "0"
}

local EMOJI_TO_NUMBER = {
  ["🙁"] = "0", ["😖"] = "1", ["👑"] = "2", ["☂️"] = "3", ["👋"] = "4",
  ["🤤"] = "5", ["🤖"] = "6", ["😺"] = "7", ["💪"] = "8", ["👏"] = "9",
  ["💪🏻"] = "8", ["👏🏻"] = "9" -- Include variants
}

local ARABIC_TO_NUMBER = {
  ["٠"] = "0", ["١"] = "1", ["٢"] = "2", ["٣"] = "3", ["٤"] = "4",
  ["٥"] = "5", ["٦"] = "6", ["٧"] = "7", ["٨"] = "8", ["٩"] = "9"
}

local MORSE_DASH_ID = "rbxassetid://11489418146"
local MORSE_DOT_ID = "rbxassetid://11489417506"


return {
  MORSE_TABLE = MORSE_TABLE,
  EMOJI_TO_NUMBER = EMOJI_TO_NUMBER,
  ARABIC_TO_NUMBER = ARABIC_TO_NUMBER,
  MORSE_DASH_ID = MORSE_DASH_ID,
  MORSE_DOT_ID = MORSE_DOT_ID
}