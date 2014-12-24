module ApplicationHelper
  def bootstrap_text_field(form, field)
    content_tag(:div, :class => "control-group") do
      html = ""
      html << form.label(field, :class => 'control-label')
      html << content_tag(:div, :class => "controls") do
        form.text_field field, :class => 'form-control'
      end
      html << error_span(form.object[field]).to_s
      raw(html)
    end
  end
  #<div class="control-group">
    #<%= f.label :first_name, :class => 'control-label' %>
    #<div class="controls">
      #<%= f.text_field :first_name, :class => 'form-control' %>
    #</div>
    #<%= error_span(@runner[:first_name]) %>
  #</div>
end
