class WodCreatorController < ApplicationController
  def create
  end

  def upload
    parsed_workouts = JSON.parse(params['json_string'])

    # Iterate through each wod
    create_wods parsed_workouts['data']

    redirect_to wods_path
  end

  private

  def create_wods(wods)
    wods.each do |wod|
      Wod.create!(
          title: wod['title'],
          notes: wod['athletesNotes'],
          description: wod['description'],
          week_name: params['week-name'],
          is_main: wod['is_main'].nil? ? false : wod['is_main'],
          category_id: Category.rich_category.id,
          order: wod['whiteboardDisplayOrder']
      )
    end
  end
end
