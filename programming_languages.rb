# require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |lang, attributes|
      attributes.each do |type, type_value|
        new_hash[lang] = {type => type_value, :style => style}
        new_hash[lang][:style] = [style]
        if new_hash[lang] == :javascript
          new_hash[lang][:style] << :oo
        end
      end
    end
  end
  new_hash
  # binding.pry
end
