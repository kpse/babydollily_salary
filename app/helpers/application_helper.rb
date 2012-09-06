module ApplicationHelper
  def sortable(column, model)
    title ||= model.human_attribute_name(column)
    sort_class = {'asc' => 'icon-chevron-up', 'desc' => 'icon-chevron-down' }
    css_class = (column.to_s == sort_column) ? "current #{sort_class[sort_direction]}" : nil
    direction = (column.to_s == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction},  {:class => css_class}
  end
end
