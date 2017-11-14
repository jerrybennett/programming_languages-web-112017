require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |lang, attributes|
      attributes.each do |type, type_value|
        new_hash[lang] = {type => type_value}
        new_hash[lang][:style] = [style]
      end
    end
  end
  new_hash.each do |lang, data|
    data.each do |i|
      i.each do |k, v|
        if lang == :javascript
          [lang][k][].unshift(:oo)
        end
      end
    end
  end
  new_hash
  binding.pry
end
