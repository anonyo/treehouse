module ApplicationHelper
def flash_class(type)
  case type
  when :alert
  "alert-info"
  when :notice
  "alert-danger"
  else
  ""
  end
end
end
