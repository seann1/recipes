class TagController < ApplicationController

  def index
    @tags = Tag.all
    render('tag/index.html.erb')
  end

  def show
    @tag = Tag.find(params[:tag_id])
    render('tag/show.html.erb')
  end

  def new
    @tags = Tag.all
    @recipe = Recipe.find(params[:recipe_id])
    @tag = Tag.new
    render('tag/new.html.erb')
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @tag = Tag.new({:name => params[:name]})
    if @tag.save
      @hash_join = HashJoin.create({:recipe_id => @recipe.id, :tag_id => @tag.id})
      redirect_to("/recipe/#{@recipe.id}/tag/#{@tag.id}/show")
    else
      render("tag/new.html/erb")
    end
  end

  def edit
  end
end
