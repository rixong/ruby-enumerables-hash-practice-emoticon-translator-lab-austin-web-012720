# require modules here
require "yaml"


def load_library(library)
  emoticon_lib = {}
  db = YAML.load_file(library).each_pair { | k,v | 
    emoticon_lib[k] => [get_meaning:v[0], get_emoticon:v[1]]
  }
  
  pp emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end