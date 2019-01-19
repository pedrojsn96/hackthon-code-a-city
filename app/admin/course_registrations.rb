ActiveAdmin.register CourseRegistration do

    permit_params :user_id, :course_id, :status

    filter :user, :as => :select, collection: User.order(:id).all.map(&:name)
    filter :course, :as => :select, collection: Course.order(:id).all.map(&:title)


    index do
        selectable_column
        id_column
        column :user do |c|
            c.user.name
        end
        column :course do |c|
            c.course.title
        end
        column :status
        column :created_at
        actions
      end

      form do |f|
        f.input :user, :as => :select, collection: User.all.map{|u| ["#{u.name}", u.id]}
        f.input :course, :as => :select, collection: Course.all.map{|c| ["#{c.title}", c.id]}
        f.input :status
        f.actions
      end
end
