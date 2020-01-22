# require modules here
require "pry"
require "yaml"

def load_library(file)
  ehash = {:get_emoticon => {}, :get_meaning => {}}
  YAML.load_file(file).each do  |meaning, array|
    english, japanese = array
    ehash[:get_emoticon][english] = japanese
    ehash[:get_meaning][japanese] = meaning
  end
  ehash
end

def get_japanese_emoticon(emoticons, emoti)
  ehash = load_library(emoticons)
  if ehash[:get_emoticon][emoti]
    return  ehash[:get_emoticon][emoti]
  else
    "Sorry, that emoticon was not found"
  end
ehash
end


def get_english_meaning(emoticons, emoti)
  ehash = load_library(emoticons)
  if ehash[:get_emoticon][emoti]
    return  ehash[:get_emoticon][emoti]
  else
    "Sorry, that emoticon was not found"
  end
  ehash
  end
