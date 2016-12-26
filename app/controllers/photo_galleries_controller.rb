class PhotoGalleriesController < ApplicationController
  before_action :set_photo_gallery, only: [:show, :edit, :update, :destroy]

  # GET /photo_galleries
  def index
    @photo_galleries = PhotoGallery.all
  end

  # GET /photo_galleries/1
  def show
  end

  # GET /photo_galleries/new
  def new
    @photo_gallery = PhotoGallery.new
  end

  # GET /photo_galleries/1/edit
  def edit
  end

  # POST /photo_galleries
  def create
    @photo_gallery = PhotoGallery.new(photo_gallery_params)

    if @photo_gallery.save
      redirect_to @photo_gallery, notice: 'Photo gallery was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /photo_galleries/1
  def update
    if @photo_gallery.update(photo_gallery_params)
      redirect_to @photo_gallery, notice: 'Photo gallery was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /photo_galleries/1
  def destroy
    @photo_gallery.destroy
    redirect_to photo_galleries_url, notice: 'Photo gallery was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_gallery
      @photo_gallery = PhotoGallery.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def photo_gallery_params
      params.fetch(:photo_gallery, {})
    end
end
