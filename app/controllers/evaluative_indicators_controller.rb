class EvaluativeIndicatorsController < ApplicationController
  active_scaffold :"evaluative_indicator" do |conf|
    conf.action_links.add 'clone_rec', :label => 'Clone', :type => :member,
        :inline => true, :position => false, :refresh_on_close => true
  end

  def clone_rec
    @ei = EvaluativeIndicator.find(params[:id])
    @new_ei = @ei.dup
    @new_ei.sub_domain = @ei.sub_domain
    @ei.indicator_ratings.each do |ir|
      @new_ei.indicator_ratings << ir.dup
    end
    @new_ei.save
    list
  end
end
