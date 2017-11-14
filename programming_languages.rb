# require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |lang, attributes|
      attributes.each do |k, v|
        new_hash[lang] = {:type => v, :style => [style]}
        if new_hash[lang][:style] == nil
          new_hash[lang][:style] = [style]
        else
          new_hash[lang][:style] << style

      end
    end
  end
  new_hash
  # binding.pry
end
