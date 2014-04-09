module ApplicationHelper

  def glyphicon(name)
    %Q(<span class="glyphicon glyphicon-#{name}"></span>).html_safe
  end

  def link_to_glyphicon(name, *args)
    link_to(*args) do
      glyphicon(name)
    end
  end

  def bs_labels(contents, type, method)
    contents.map { |content|
      bs_label(content.send(method), type)
    }.join(' ').html_safe
  end

  def bs_label(content, type)
    content_tag :span, class: "label label-#{type}" do
      content
    end
  end

  def active_if_controller(controller_names)
    Array(controller_names).include?(params[:controller])  ? 'active' : ''
  end

  def shallow_resource_path(namespace = nil, parent, resource)
    path = []
    (path << namespace) if namespace
    (path << parent) if resource.new_record?
    path << resource
  end

end
