module AdminPagesHelper


	# Custom pagination text
	def page_entries_info(collection, options = {})		
	  entry_name = options[:entry_name] || (collection.empty?? 'item' :
	      collection.first.class.name.gsub(/Current/, '').split('::').last.titleize)
	  if collection.total_pages < 2
	    case collection.size
	    when 0; "No #{entry_name.pluralize} found."
	    else; "Displaying all #{entry_name.pluralize}."
	    end
	  else
	    %{Displaying <strong>%d - %d</strong> of <strong>%d</strong> #{entry_name.pluralize}}.html_safe % [
	      collection.offset + 1,
	      collection.offset + collection.length,
	      collection.total_entries
	    ]
	  end
	end

	# Prints a confirmation message
	def confirmation_message(object_name)
		'WARNING: Are you sure you want to DELETE this ' + object_name + '? Doing so will affect all plants with this ' + object_name + '!'
	end


end
