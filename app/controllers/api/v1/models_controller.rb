class Api::V1::ModelsController < ApplicationController

  before_action :set_models, only: [:show, :update, :destroy]


  # GET /models
  def index
    @models = Model.all
    render json: @models
  end

  # GET /models/1
  def show
    render json: @model
  end

  # POST /models
  def create
    @model = Model.new(models_params)
    if @model.save
      render json: @model, status: :created
    else
      render json: @model.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /models/1
  def update
    if @model.update(models_params)
      render json: @model
    else
      render json: @model.errors, status: :unprocessable_entity
    end
  end

  # DELETE /models/1
  def destroy
    @model.destroy
  end

  private

  def set_models
    @model = Model.find(params[:id])
  end

  def models_params
    params.permit(:name)
  end

end
