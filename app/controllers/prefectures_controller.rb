class PrefecturesController < ApplicationController
  before_action :set_prefecture, only: [:show, :update, :destroy]

  # GET /prefectures
  def index
    @prefectures = Prefecture.all
    @prefectures = @prefectures.where(code: params[:code]) if params[:code].present?
    @prefectures = @prefectures.where(kana: params[:kana]) if params[:kana].present?
    @prefectures = @prefectures.where(name: params[:name]) if params[:name].present?
    @prefectures = @prefectures.where(romaji: params[:romaji]) if params[:romaji].present?
    render json: @prefectures
  end

  # GET /prefectures/1
  def show
    render json: @prefecture
  end

  # POST /prefectures
  def create
    @prefecture = Prefecture.new(prefecture_params)

    if @prefecture.save
      render json: @prefecture, status: :created, location: @prefecture
    else
      render json: @prefecture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prefectures/1
  def update
    if @prefecture.update(prefecture_params)
      render json: @prefecture
    else
      render json: @prefecture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prefectures/1
  def destroy
    @prefecture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prefecture
      @prefecture = Prefecture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prefecture_params
      params.require(:prefecture).permit(:name, :kana, :romaji)
    end
end
