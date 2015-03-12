class EvaluationsController < ApplicationController
  def index
    @evaluation_definitions = EvaluationDefinition.all
    @evaluations = Evaluation.all
  end

  def new
    @eval_def = EvaluationDefinition.find(params[:evaluation_definition_id])
    @evaluation = Evaluation.new
    @evaluation.evaluation_date = Date.today
    @evaluation.evaluation_definition = @eval_def
    @eval_def.evaluation_section_definitions.each do |esd|
      @es = EvaluationSection.new
      @evaluation.evaluation_sections << @es
      @es.evaluation = @evaluation
      @es.evaluation_section_definition = esd
      esd.evaluation_comment_definitions.each do |ecd|
        @ec = EvaluationComment.new
        @es.evaluation_comments << @ec
        @ec.evaluation_comment_definition = ecd
        @ec.evaluation_section = @es
      end
      if !esd.sub_domain.nil?
        esd.sub_domain.evaluative_indicators.each do |ei|
          @ei = EvaluationIndicator.new
          @ei.evaluative_indicator = ei
          @ei.evaluation_section = @es
          @es.evaluation_indicators << @ei
        end
      end
    end
    #@eval.save!
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    if @evaluation.save
      redirect_to evaluations_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @evaluation = Evaluation.find(params[:id])
  end

  def update
    @evaluation = Evaluation.find(params[:id])
    if @evaluation.update(evaluation_params)
      redirect_to evaluations_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
  def evaluation_params()
    params.require(:evaluation).permit(
        :evaluation_definition_id, :evaluation_date,
        evaluation_sections_attributes:
            [:id, :evaluation_section_definition_id,
             evaluation_comments_attributes: [:id, :evaluation_comment_definition_id, :comment],
             evaluation_indicators_attributes: [:id, :evaluative_indicator_id, :score]])
  end
end
