module WodsHelper
  def filter_buttons(form, search_params)
    content_tag :div, class: 'row' do
      content_tag :div, class: 'col-12' do
        concat(
            search_filter_button(form) + clear_filter_button(search_params)
        )
      end
    end
  end

  def show_notes(wod)
    unless wod.notes_html.blank?
      render 'wods/show/notes', notes: wod.notes_html
    end
  end

  def is_wod_favorite(wod, form)
    if(current_user.has_wod_id(wod.id))
      form.submit('Unmark as Favorite', class: 'btn btn-outline-warning')
    else
      form.submit('Mark as Favorite', class: 'btn btn-warning')
    end
  end

  private
  def search_filter_button form
    content_tag :div, form.submit('Search', class: 'btn btn-secondary'), class: 'form-group float-right'
  end

  def clear_filter_button search_params
    if search_params
      content_tag :div, link_to('Clear filters', wods_path, :class => 'btn btn-danger'), class: 'form-group float-right'
    end
  end

end
