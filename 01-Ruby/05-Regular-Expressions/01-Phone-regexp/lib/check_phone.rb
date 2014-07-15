def french_phone_number?(phone_number)
number=phone_number.delete " .-"
if number =~ /(\b0[1-9]\d{8}\b)|(\+33[1-9]\d{8}\b)/
    return true
  else return false
  # TODO: true or false?
  end
end
