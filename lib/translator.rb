# require modules here
require "yaml"
require "pry"

def load_library(library)
  # code goes here
  emoticons = YAML.load_file("./lib/emoticons.yml")
  emoticons.each_with_object({}) do |(key,value), emoticon_hash|
    emoticon_hash[key] = {}
    emoticon_hash[key][:english] = value[0]
    emoticon_hash[key][:japanese] = value[1]
  end
end

def get_japanese_emoticon(filename, emoticon)
  # code goes here
  emoticon_hash = load_library(filename)
  emoticon_hash.each do |key,value|
    if emoticon_hash[key][:english] == emoticon 
      return emoticon_hash[key][:japanese]
    end
  end
end

def get_english_meaning(filename, emoticon)
  emoticon_hash = load_library(filename)
  # code goes here
end