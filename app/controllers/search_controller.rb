class SearchController < ApplicationController
  def index
    nation = params[:nation]
    nation["_"] = " "
    @characters = CharacterSearchFacade.character_search(nation)
    @homeland = nation.upcase
  end
end
