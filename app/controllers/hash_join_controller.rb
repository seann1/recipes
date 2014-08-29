class HashJoinController < ApplicationController
  def show
  end

  def new
    @hash_joins = HashJoin.all
    @recipe = Recipe.find(params[:recipe_id])
    @hash_join = HashJoin.new
    render('hash_join/new.html.erb')
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @tag = Tag.find(params[:tag_id])
    @hash_join = HashJoin.new({:recipe_id => params[:recipe_id], :tag_id => params[:tag_id]})
    if @hash_join.save
      redirect_to("/recipe/#{@recipe.id}/tag/#{@tag.id}/show")
    else
      render("tag/new.html/erb")
    end
  end

  def edit
  end
end
