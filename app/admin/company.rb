ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :no_of_company, :email

index do
  column :name
  column :no_of_company
  column :email
  actions
end

form do |f|
  f.inputs 'Company' do
    f.input :name
    f.input :no_of_company
    f.input :email
  end
  f.actions
end
end
