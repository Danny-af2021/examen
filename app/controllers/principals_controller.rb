class PrincipalsController < ApplicationController
    def index
        @principals = Noticium.all
    end
    
    def show
        @noticia = Noticium.find(params[:id])
    end

    def new
         @noticia = Noticium.new
    end

    def create
        @noticia = Noticium.new(noticia_params)
        if @noticia.save
            redirect_to noticia_path
        else
            render :new
        end
    end

    private

    def noticia_params
        params.require(:noticia).permit(:title, :fecha, :description)
    end

end