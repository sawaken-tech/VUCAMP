ActiveAdmin.register NearStore do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :camp_id, :storeName, :address, :workHour
  #
  # or
  #
  # permit_params do
  #   permitted = [:camp_id, :storeName, :address, :workHour]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :camp, :storeName, :address, :workHour
  
end
