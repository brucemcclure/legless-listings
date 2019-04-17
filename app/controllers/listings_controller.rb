class PagesController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]


    def create
        #create new listing
    end

    def update
        #updates the current listing
    end

    def index
        #shows all listings
        @listings = Listing.all
    end

    def edit
    end

    def destroy
    end

    def new
        #shows form for creating a new listing
    end

    def show
        #show a single listing
    end


private
    
    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end

end