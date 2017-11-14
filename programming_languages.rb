# require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |lang, attributes|
      attributes.each do |k, v|
        new_hash[lang] = {k => v}
        new_hash[lang][:style] = [style]
        if new_hash[lang] == :javascript
          new_hash[lang][:style][style].clear
      end
    end
  end
  new_hash
  # binding.pry
end
