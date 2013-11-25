module ApplicationHelper
def flash_class(type)
  case type
  when :alert
  "alert-success"
  when :notice
  "alert-sucess"
  else
  ""
  end
end
end
