class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @recipes = Recipe.all
    @bookmark = Bookmark.new
  end

  def create
    @category = Category.find(params[:category_id])
    @recipes = Recipe.all
    # raise
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category
    # raise
    if @bookmark.save
      redirect_to category_path(@category), notice: 'Recipe was successfully added to the category.'
    else
      # raise @bookmark.errors.full_messages.inspect
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    raise
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category), notice: "Recipe was successfully removed from the category."
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comments)
  end
end
