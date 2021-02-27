class StoresController < ApplicationController
  def products
  	@pipe_types = PipeType.all

    temp = 0
  	@pipe_types.each do |p_type|

  		temp = temp + (PipeStoreInput.sum_amount_by_pipe_type(p_type) - PipeStoreOutput.sum_amount_by_pipe_type(p_type))*p_type.weight
  	end

  	@total_w = temp
  end

  def raw_materials
  end

  def washers
  end
end
