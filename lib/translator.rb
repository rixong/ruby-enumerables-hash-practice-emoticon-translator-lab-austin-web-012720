# require modules here
require "yaml"


def load_library(library)
  emoticon_lib = {{get_meaning:{}, get_emoticon:{}}}
  db = YAML.load_file(library).each_pair { | k,v |
  puts k #  "☜(⌒▽⌒)☞" => "angel",
    emoticon_lib = {get_meaning:v[0], get_emoticon:v[1]}
  }
  
  pp emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end