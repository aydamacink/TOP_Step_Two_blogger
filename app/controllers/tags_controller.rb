class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end


  def create
    @tag = Tag.new(tag_params)
    @tag.save
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(tag_params)
  end

  def destroy
    @tag = Tag.destroy
  end

end
