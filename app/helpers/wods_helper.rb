module WodsHelper
  def filter_buttons form, search_params
    content_tag :div, class: 'row' do
      content_tag :div, class: 'col-12' do
        concat(
            search_filter_button(form) + clear_filter_button(search_params)
        )
      end
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
