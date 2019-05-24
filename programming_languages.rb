def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |name, data|
      if !new_hash.key?(name)
        new_hash[name] = data.clone
        new_hash[name][:style] = []
      end
      new_hash[name][:style] << style
    end
  end
  new_hash
 end
