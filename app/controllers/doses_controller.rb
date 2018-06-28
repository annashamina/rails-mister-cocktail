class DosesController < ApplicationController
  before_action :set_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(params[:cocktail_id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    cocktail_variable = Cocktail.find(@dose.cocktail_id)
    @dose.destroy
    
    redirect_to cocktail_path(cocktail_variable)
  end

private
# ---->>> HOW TO CREATE PARAMS FOR A PAIR -- i.e. DOSAGE & INGREDIENT - ??
def dose_params
  params.require(:dose).permit(:description, :ingredient_id)
end

def set_cocktail
  @cocktail = Cocktail.find(params[:cocktail_id])
end

end
