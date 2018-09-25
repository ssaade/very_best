class FoodTypesController < ApplicationController
  def index
    @food_types = FoodType.page(params[:page]).per(10)

    render("food_types/index.html.erb")
  end

  def show
    @dish = Dish.new
    @food_type = FoodType.find(params[:id])

    render("food_types/show.html.erb")
  end

  def new
    @food_type = FoodType.new

    render("food_types/new.html.erb")
  end

  def create
    @food_type = FoodType.new

    @food_type.food_type = params[:food_type]

    save_status = @food_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/food_types/new", "/create_food_type"
        redirect_to("/food_types")
      else
        redirect_back(:fallback_location => "/", :notice => "Food type created successfully.")
      end
    else
      render("food_types/new.html.erb")
    end
  end

  def edit
    @food_type = FoodType.find(params[:id])

    render("food_types/edit.html.erb")
  end

  def update
    @food_type = FoodType.find(params[:id])

    @food_type.food_type = params[:food_type]

    save_status = @food_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/food_types/#{@food_type.id}/edit", "/update_food_type"
        redirect_to("/food_types/#{@food_type.id}", :notice => "Food type updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Food type updated successfully.")
      end
    else
      render("food_types/edit.html.erb")
    end
  end

  def destroy
    @food_type = FoodType.find(params[:id])

    @food_type.destroy

    if URI(request.referer).path == "/food_types/#{@food_type.id}"
      redirect_to("/", :notice => "Food type deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Food type deleted.")
    end
  end
end
