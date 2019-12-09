class Api::V1::TypesController < ApplicationController


  before_action :set_models, only: [:show, :update, :destroy]


  # GET /types
  def index
    @types = Type.all
    render json: @types
  end

  # GET /types/1
  def show
    render json: @type
  end

  # POST /types
  def create
    @type = Type.new(types_params)
    if @type.save
      render json: @type, status: :created
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /types/1
  def update
    if @type.update(types_params)
      render json: @type
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /types/1
  def destroy
    @type.destroy
  end

  private

  def set_models
    @type = Type.find(params[:id])
  end

  def types_params
    params.permit(:title, :body, :model_id)
  end

end
