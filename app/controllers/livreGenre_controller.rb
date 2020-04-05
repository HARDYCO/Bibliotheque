class LivreGenreController < ApplicationController
  def index
    @Genre = Genre.all
  end
