module ApplicationHelper

  def base_title
    "Plants UWA"
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    if page_title.empty?
      base_title
    else
      "#{base_title} - #{page_title}"
    end
  end

  def small_title(page_title)
    if page_title.empty?
      base_title
    else
      page_title
    end
  end
    
  def nice_format(text)
    h(text).gsub(/\n/, "<br/>").html_safe
  end

  def link_to_submit(*args, &block)
    link_to_function (block_given? ? capture(&block) : args[0]), "$(this).closest('form').submit()", args.extract_options!
  end



end
