class RecipesController < ApplicationController
    def index 
        # @recipe=Recipe.new
        # @recipe.title ="Sandwich"
        # @recipe.number_of_titles="2"
        
        # @soup=Recipe.new
        # @soup.title ="Tomato Soup"
    
        
        # @pasta=Recipe.new
        # @pasta.title ="Tomato Pasta"
        # @pasta.number_of_titles = "3"
        
        # @recipes= [@recipe, @soup]
        
        @recipes= Recipe.all
        
        
    end
    
    def show
        @recipe=Recipe.find params[:id]
    end
    
    def new
        @recipe= Recipe.new  
    end
    
    def create
      @recipe= Recipe.new recipe_params
      
      @recipe.save 
      redirect_to recipes_path
    end
    
def edit
    @recipe=Recipe.find params[:id]
end

def update
    @recipe=Recipe.find params[:id]
    @recipe.update recipe_params
    redirect_to recipes_path
end
    
private
    def recipe_params
        params.require(:recipe).permit(:title, :description)
    end
    
    
end
