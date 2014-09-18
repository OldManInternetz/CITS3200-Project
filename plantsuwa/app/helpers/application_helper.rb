module ApplicationHelper

  def base_title
    "Plants UWA"
  end

  """ Returns the full title on a per-page basis. """
  def full_title(page_title)
    if page_title.empty?
      base_title
    else
      "#{base_title} - #{page_title}"
    end
  end

  """ Returns the small version of the title (without 'Plants UWA' next to it). """
  def small_title(page_title)
    if page_title.empty?
      base_title
    else
      page_title
    end
  end
    
  """ Turns newline characters into breaks. """  
  def nice_format(text)
    h(text).gsub(/\n/, "<br/>").html_safe
  end


  """ Taken from the internet (from the Rails website, I think). Allows a div to submit a form. """
  def link_to_submit(*args, &block)
    link_to_function (block_given? ? capture(&block) : args[0]), "$(this).closest('form').submit()", args.extract_options!
  end


  """ Determines the colour of a flower, or leaf. Used in the little circles that go next to the flower/leaf colour items. """
  def to_colour(item)
    if item.alt_colour.blank?
      (item.name).gsub(/\s+/, '')
    else
      (item.alt_colour).gsub(/\s+/, '')
    end
  end

end
