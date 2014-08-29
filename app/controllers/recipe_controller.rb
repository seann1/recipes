class RecipeController < ApplicationController
  def index
    @recipes = Recipe.all
    render("/recipe/index")
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    render('recipe/show.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipe/new.html.erb')

  end

  def create
    @recipe = Recipe.new({:name => params[:name], :instructions => params[:instructions], :rating => params[:rating], :contributor_id => params[:contributor_id]})
    if @recipe.save
      redirect_to("/recipe/#{@recipe.id}/show")
    else
      render('recipe/new.html.erb')
    end
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    render('recipe/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    if @recipe.update({:name => params[:name], :instructions => params[:instructions], :rating => params[:rating], :contributor_id => params[:contributor_id]})
      redirect_to("/recipe/#{@recipe.id}/show")
    else
      render('recipe/edit.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.destroy
    redirect_to("/")
  end
end
