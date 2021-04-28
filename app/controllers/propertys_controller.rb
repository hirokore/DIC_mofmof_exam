class PropertysController < ApplicationController
  before_action :set_property, only: [ :show, :edit, :update, :destroy ]

  def new
    if params[:back]
      @property = Property.new(property_params)
    else
      @property = Property.new
      2.times { @property.nearest_stations.build }
    end
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to propertys_path, notice: "登録完了"
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to propertys_path, notice: "編集完了"
    else
      render :new
    end
  end

  def index
    @property = Property.all
  end

  def show
  end

  def edit
  end

  def destroy
    @property.destroy
    redirect_to propertys_path, notice: "削除完了"
  end

  private

  def property_params
    params.require(:property).permit(:name, :value, :address, :age, :memo, nearest_stations_attributes:[:id, :station, :route, :time])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
