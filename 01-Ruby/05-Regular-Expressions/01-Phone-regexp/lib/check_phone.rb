
def french_phone_number?(phone_number)
  # TODO: true or false?
  if phone_number =~ /^(0|\+33)[\s-]?[167][\s-]?(\d{2}[\s-]?){4}$/
    return true
  else
    return false
  end
end

puts french_phone_number?("06 65 36 36 36")
