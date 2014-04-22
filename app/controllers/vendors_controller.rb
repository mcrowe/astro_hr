class VendorsController < ApplicationController

  def show
    @vendor = Vendor.last
  end

  def edit
    @vendor = Vendor.last
  end

  def update
    @vendor = Vendor.last

    if @vendor.update(Vendor_params)
      redirect_to @vendor, notice: 'Vendor was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

    def Vendor_params
      params.require(:Vendor).permit(:name)
    end

end