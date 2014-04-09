Traininged::Application.routes.draw do

  devise_for :managers

  root to: 'companies#show'

  resources :companies, only: [:show, :edit, :update] do
    resources :departments, shallow: true
  end

  delete 'departments/:department_id/employees/:id', to: 'department_employees#destroy', as: :department_employee

end
