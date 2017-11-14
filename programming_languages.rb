require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |lang, attributes|
      attributes.each do |k, v|
        new_hash[lang] = {k => v}
        new_hash[lang][:style] = [style]
        new_hash[:javascript][:style][[style].unshift(:oo)]
      end
    end
  end
  new_hash
  binding.pry
end
