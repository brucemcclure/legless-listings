class PagesController < ApplicationController
    def home
        render plain: "Home page"
    end
end