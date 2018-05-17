class AlbumsController < ApplicationController

    def show
        @album = Album.find(params[:id])
    end

    def new 
        @album = Album.new
    end

    def create
        @album = Album.new(album_params)

        if @album.save
            redirect_to @album 
        else
            render :new
        end
    end

    def edit
        @album = Album.find(params[:id])
    end

    def update
        @album = Album.find(params[:id])
        
        if @album.update(album_params)
            redirect_to @album 
        else
            redirect_to edit_album_path
        end
    end

    def destroy
        @album = Album.find(params[:id])
        @album.destroy
        redirect_to albums_path
    end

    def index
        @albums = Album.all
    end

    private
    def album_params
    params.require(:album).permit(:title, :artist, :year_released)
    end


end



