class SearchesController < ApplicationController

    def new
      @search = Search.new
      @categories = Joboffer.distinct.pluck(:minimum_japaneseskill)
    end

    def create
      @search = Search.create(search_params)
      redirect_to @search

    end

    def show
      @search = Search.find(params[:id])

    end

    private

    def search_params
      params.require(:search).permit(:keywords,:minimum_japanese,:min_salary,:max_salary)

    end

end
