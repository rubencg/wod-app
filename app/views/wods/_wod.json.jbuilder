json.extract! wod, :id, :title, :notes, :description, :week_name, :is_main, :created_at, :updated_at
json.url wod_url(wod, format: :json)
