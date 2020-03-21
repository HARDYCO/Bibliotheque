class LivresController < ApplicationController

  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def listelivre

    @livres = Livre.all
  end
  def cherchelivre
    require 'json'
    require 'open-uri'
    url = "https://raw.githubusercontent.com/maltyeva/iba-cocktails/master/recipes.json"
    @test=JSON.parse(open(url).read)
  end
  def recherchelivre
    @livre = Livre.where("titre LIKE ?","%"+params[:q]+"%").all

  end
  def index
    @livres = Livre.all
  end
  def api
    @livres = Livre.all
    render json:@livres
  end
  def show
  end
  def edit
  end
  def update
    @livre.update(livre_param)
    redirect_to admview_path,notice: "Livre modifié avec succès"
  end
  def new
    @livre = Livre.new
  end
  def create
    livre = Livre.create(livre_param)
    redirect_to livre_path(livre.id),notice: "Livre ajouté avec succès"
  end
  def destroy
    @livre.destroy
    redirect_to admview_path,notice: "Livre supprimé avec succès"
  end
  private
  def livre_param
    livre_param = params.require(:livre).permit(:titre, :auteur, :description, :codebarre)
  end
  def set_message
      @livre = Livre.find(params[:id])
  end
end
