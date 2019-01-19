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
          f.input :user, :as => :select, collection: User.order(:id).all.map(&:id)
          f.input :course, :as => :select, collection: Course.order(:id).all.map(&:id)
          f.input :status
        end
        f.actions
      end
end
