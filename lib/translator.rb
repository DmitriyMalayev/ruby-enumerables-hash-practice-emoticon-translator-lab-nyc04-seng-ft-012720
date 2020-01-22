# require modules here
require "pry"
require "yaml"


def load_library(file)
  ehash = {:get_emoticon => {}, :get_meaning => {}}
  YAML.load_file(file).each do  |meaning, array|
  #  binding.pry
    english, japanese = array
    ehash["get_emoticon"][english] = japanese
    ehash["get_meaning"][japanese] = meaning
  end
end

def get_japanese_emoticon(emoticons, emoti)
  ehash = load_library(emoticons)
  ehash.each do |key, value|
    ehash[:get_emoticon][key] = value
    ehash[:get_meaning][key] = value
  # code goes here
end







end

def get_english_meaning(emoticons, emoti)
  ehash = YAML.load_file(emoticons)
  emoti.each do |key, value|
    ehash[:get_emoticon][key] = value
    ehash[:get_meaning][key] = value
  # code goes here
end
end
