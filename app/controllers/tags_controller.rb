class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :destroy]
  before_action :require_login, only: [:destroy]

  def index
    @tags = Tag.all
  end

  def show
   
  end

  def destroy
    @tag.destroy
  end

  private
    
    def set_tag
      @tag = Tag.find(params[:id])
    end
end
