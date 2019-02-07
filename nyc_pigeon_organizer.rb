def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, attribute_hash|
    attribute_hash.each do |value, name_array|
      name_array.each do |name|
        new_hash[name] ||= {}
        new_hash[name][attribute] ||= []
        new_hash[name][attribute] << value.to_s
      end
    end
  end
  new_hash
end