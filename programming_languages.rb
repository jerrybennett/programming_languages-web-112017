require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |lang, attributes|
      attributes.each do |k, v|
        if new_hash.empty?
					new_hash[lang] = {k => v, :style => [style] }
				elsif !new_hash.empty? && lang == :javascript
					new_hash[lang][:style] << style
				end
      end
    end
  end
  new_hash
  binding.pry
end
