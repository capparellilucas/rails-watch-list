class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @lists = List.new()
  end

  def show
    @lists = List.find(params[:id])
  end


  def create
    @list = List.new(list_params)
    @list.save # Will raise ActiveModel::ForbiddenAttributesError

    redirect_to lists_path
  end

  private

def list_params
  params.require(:list).permit(:name)
end

end
