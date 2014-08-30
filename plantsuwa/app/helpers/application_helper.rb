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
    



end
