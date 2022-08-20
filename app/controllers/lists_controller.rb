class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:id])
  end

  def new
    @lists = List.new()
  end

  def create
    @list = List.new(params[:list])
    @list.save # Will raise ActiveModel::ForbiddenAttributesError
  end


end
