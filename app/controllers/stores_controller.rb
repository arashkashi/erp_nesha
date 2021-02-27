class StoresController < ApplicationController
  def products
  	@pipe_types = PipeType.all
  end

  def raw_materials
  end

  def washers
  end
end
