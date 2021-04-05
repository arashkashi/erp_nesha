class DelegatesController < ApplicationController

  skip_before_action :application_before_action

  def pipe_store
  	@pipe_types = PipeType.all.order(:size)
  end
end
