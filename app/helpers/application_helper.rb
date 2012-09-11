module ApplicationHelper
  def sortable(column, model)
    title ||= model.human_attribute_name(column)
    sort_class = {'asc' => 'icon-chevron-up', 'desc' => 'icon-chevron-down' }
    css_class = (column.to_s == sort_column) ? "current #{sort_class[sort_direction]}" : nil
    direction = (column.to_s == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction},  {:class => css_class}
  end

  def link_to_add_fields(name, f, type)
    new_object = f.object.send "build_#{type}"
    id = "new_#{type}"
    fields = f.send("#{type}_fields", new_object, child_index: id) do |builder|
      render(type.to_s + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: filter_fields(fields)})
  end

  def filter_fields fields
    #<option value="id">Id</option>
    #<option value="created_at">created at</option>
    #<option value="line_of_business">LOB</option>
    fields.gsub(/<option value="\w*?id">.+?<\/option>/, "").gsub(/<option value="\w+?_at">.+?<\/option>/, "").
        gsub(/<option value="line_of_business">.+?<\/option>/, "")
  end

end
