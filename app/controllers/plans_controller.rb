class PlansController < ApplicationController

  #before_action :set_plan, only: [:show, :edit, :update, :destroy]
  #layout "application"

  # GET /courses

def show

end

    def payments
      @plan1 = Plan.find(1)
      @plan2 = Plan.find(2)
      @plan3 = Plan.find(3)
      @plan4 = Plan.find(4)
    end
=begin

  def set_plan
    @plan = Plan.find(params[:id])
  end
=end

end