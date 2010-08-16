# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def set_focus_to_field_id(id)
    javascript_tag("$('#{id}').focus()");
  end
  
  def format_date(date)
    date.strftime("%Y-%m-%d %H:%M:%S")
  end
end
