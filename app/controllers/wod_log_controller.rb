class WodLogController < ApplicationController
  before_action :set_wod, only: [:new, :create]

  def index
    @wod_logs = WodLog.where(user_id: current_user.id)
  end

  def new
    @wod_log = WodLog.new
  end

  def create
    @wod_log = WodLog.new(wod_log_params.merge(wod_id: wod_id_param, user_id: current_user.id))
    respond_to do |format|
      if @wod_log.save
        format.html { redirect_to wod_path(@wod), notice: 'Wod Log was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  private

  def set_wod
    @wod = Wod.find(wod_params['wod_id'])
  end

  def wod_log_params
    params.require('wod_log').permit(:minutes, :seconds, :notes)
  end

  def wod_id_param
    params.require('wod_id')
  end

  def wod_params
    params.permit(:wod_id)
  end
end
