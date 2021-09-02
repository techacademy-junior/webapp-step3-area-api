class Api::V1::PrefecturesController < ApplicationController
  def index
    @prefectures = Prefecture.all
    @prefectures = @prefectures.where(code: params[:code]) if params[:code].present?
    @prefectures = @prefectures.where(kana: params[:kana]) if params[:kana].present?
    @prefectures = @prefectures.where(name: params[:name]) if params[:name].present?
    @prefectures = @prefectures.where(romaji: params[:romaji]) if params[:romaji].present?
    render json: { status: 'SUCCESS', message: 'Loaded prefectures', data: @prefectures }
  end
end