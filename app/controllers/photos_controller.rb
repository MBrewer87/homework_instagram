class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photodeets = Photo.find(params[:id])
  end

  def new_form
  end

  def create_row
    @photodeets = Photo.new
    @photodeets.source = params[:the_source]
    @photodeets.caption = params[:the_caption]

    @photodeets.save
    render("create_row")
  end

  def destroy
    @photodeets = Photo.find(params[:id])
    render("destroy")
    @photodeets.destroy
  end

end
