ActiveAdmin.register Course do
  permit_params :name, :description, :start_date, :end_date, :score_min

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :start_date
    column :end_date
    column :score_min
    column :created_at
    actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :start_date, start_year: 2019
      f.input :end_date, start_year: 2019
      f.input :score_min
    end
    f.actions
  end

end
