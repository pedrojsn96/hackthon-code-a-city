ActiveAdmin.register CourseRegistration do

    permit_params :user_id, :course_id, :status

    filter :user, :as => :select, collection: User.order(:id).all.map(&:name)
    filter :course, :as => :select, collection: Course.order(:id).all.map(&:title)


    index do
        selectable_column
        id_column
        column :users do |c|
          c.name
        end
        column :course do |c|
            c.title
          end
        column :created_at
        actions
      end

      form do |f|
        f.inputs "Detalhes" do
          f.input :cicle_id, as: :select, collection: Cicle.all.map {|m| [m.description, m.id]}
          f.input :avaliation_type, as: :select, collection: { 'Competência' => 'competence', 'Metas e Objetivos' => 'goals', 'PDI' => 'pdi', 'Clima' => 'climate'}
          f.input :start_goal_def_date, as: :date_picker, :input_html => { :style => "width:10%;" }
          f.input :end_goal_def_date, as: :date_picker, :input_html => { :style => "width:10%;" }
          f.input :start_grid
          f.input :end_grid	
          f.input :start_date, as: :date_picker, :input_html => { :style => "width:10%;" }
          f.input :end_date, as: :date_picker, :input_html => { :style => "width:10%;" }
          f.input :about
        end
        f.actions
      end
end
