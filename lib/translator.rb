# require modules here
require "yaml"


def load_library(library)
  emoticon_db = YAML.load_file(library)
  pp emoticon_db
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end