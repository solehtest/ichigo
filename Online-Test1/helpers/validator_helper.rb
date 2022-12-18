module ValidatorHelper
  def invalid_element?(elements, value, element)
    raise "Invalid #{element}" unless elements.include?(value)
  end
end