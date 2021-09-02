class Api::V1::AreasController < ApplicationController
  def index
    @areas = Area.all
    @areas = @areas.where(id: params[:id]) if params[:id].present?
    @areas = @areas.where(name: params[:name]) if params[:name].present?
    render json: { status: 'SUCCESS', message: 'Loaded areas', data: @areas }
  end
end