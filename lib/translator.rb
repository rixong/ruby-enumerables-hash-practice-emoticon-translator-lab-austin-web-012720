# require modules here
require "yaml"


def load_library(library)
  emoticon_lib = { get_meaning:{}, get_emoticon:{} }
  db = YAML.load_file(library).each_pair { | k,v |
    emoticon_lib[:get_meaning][v[1]] = k
    emoticon_lib[:get_emoticon][v[0]] = v[1]
  }
  return emoticon_lib
end

def get_japanese_emoticon(library, emoticon)
  result = load_library(library)[:get_emoticon][emoticon]
  result ? result : "Sorry, that emoticon was not found"
  result
end

def get_english_meaning(library, emoticon)
  result = load_library(library)[:get_meaning][emoticon]
  
end

# k - word
# v - [usemot, jap]

# get_meaning - jap => word
# get_emoticon - usemot => jap