 def reformat_languages(languages)
  # your code here	  
  new_hash = {} 

   languages.each do |oo_or_func, description|
    description.each do |language, type|
      if new_hash.has_key?(language)
        new_hash[language][:style] << oo_or_func
      else
        new_hash[language] = type
        new_hash[language][:style] = [oo_or_func]
      end
    end
  end

   new_hash  
end