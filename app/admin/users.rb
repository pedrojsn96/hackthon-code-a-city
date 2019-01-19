ActiveAdmin.register User do
    permit_params :name, :cpf, :birth_on, :email, :phone, :password, :password_confirmation

    index do
        selectable_column
        id_column
        column :name
        column :email
        column :cpf
        column :phone
        column :birth_on
        column :created_at
        actions
    end

    filter :name
    filter :email
    filter :cpf
    filter :birth_on

    form do |f|
        f.inputs do
            f.input :name
            f.input :email
            f.input :cpf
            f.input :phone
            f.input :birth_on, start_year: 1950
            f.input :password
            f.input :password_confirmation
        end
        f.actions
    end


end
