class HomeController < ApplicationController
  def index
  end

  def new_eval
    @eval_def = EvaluationDefinition.find(params[:id])
  end
end
