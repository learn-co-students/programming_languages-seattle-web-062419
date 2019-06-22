def languages
  languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,langs_of_style|
    langs_of_style.each do |lang, info|
      if new_hash[lang] == nil
        new_hash[lang] = info
        new_hash[lang][:style] = [style]
      else
        new_hash[lang][:style] << style
      end
    end
  end
  new_hash
end

puts reformat_languages(languages)

