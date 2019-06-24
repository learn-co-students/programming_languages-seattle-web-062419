require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |k,v|
    v.each do |attribute, data|
      new_hash[attribute] ||= data
      new_hash[attribute][:style] = []
      new_hash[attribute][:style] << k 
end
end
new_hash[:javascript][:style] << :oo
new_hash
end



  
# k = :oo, :functional
# v = {:ruby => {:type => "interpreted"},...
# attribute = :ruby
# data = {:type => "interpreted"
# data_type = {:type, "interpreted"}