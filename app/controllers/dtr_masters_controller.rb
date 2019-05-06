class DtrMastersController < ApplicationController
	 def create
    @employee_master = EmployeeMaster.find(params[:employee_master_id])
    @dtr_masters = @employee_master.dtr_masters.create(dtr_master_params)
    redirect_to employee_masters_url
  end
 
  private
    def dtr_master_params
      params.require(:dtr_master).permit!
    end
end
