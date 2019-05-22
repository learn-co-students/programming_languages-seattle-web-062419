def reformat_languages(languages)
  # your code here
    hash = {}

    languages.each do |k,v|

      languages[k].each do |language, value|
        if !hash[language]
          hash[language] = {}
        end
        hash[language][:type] = value[:type]
        if !hash[language][:style]
          hash[language][:style] = []
        end
        hash[language][:style] << k
      end
    end
    hash

end
