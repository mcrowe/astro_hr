Traininged::Application.routes.draw do

  devise_for :vendors 
  resources :vendors, :courses

  devise_for :managers

  resources :companies, only: [:show, :edit, :update] do
    resources :departments, shallow: true
  end

  delete 'departments/:department_id/employees/:id', to: 'department_employees#destroy', as: :department_employee

end
