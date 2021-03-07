class StoresController < ApplicationController
  def products
  	@pipe_types = PipeType.all

    temp = 0
  	@pipe_types.each do |p_type|

  		temp = temp + (PipeStoreInput.sum_amount_by_pipe_type(p_type) - PipeStoreOutput.sum_amount_by_pipe_type(p_type))*p_type.weight
  	end

  	@total_pipe_weight = temp

    @raw_material_types = RawMaterialType.all

    temp = 0

    @raw_material_types.each do |r_type|
      temp = temp + RawMaterialInput.sum_amount_by_raw_type(r_type) - RawMaterialToProductionInput.sum_amount_by_raw_type(r_type)
    end

    @total_raw_weight = temp

    @washer_types = WasherType.all

  end

  def raw_materials
  end

  def washers
  end
end
