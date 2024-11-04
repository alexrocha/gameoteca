Trestle.resource(:games) do
  menu do
    item :games, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :release_date
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |game|
    row do
      col(sm: 4) do
        text_field :title
      end
      col(sm: 4) do
        date_field :release_date
      end
      col(sm: 4) do
        number_field :players
      end
    end

    row do
      col(sm: 6) do
        collection_select :developer_ids, Developer.all, :id, :name, { label: Developer.model_name.human(count: 2) }, { multiple: true }
      end
      col(sm: 6) do
        collection_select :genre_ids, Genre.all, :id, :title, { label: Genre.model_name.human(count: 2) }, { multiple: true }
      end
    end

    row do
      col(sm: 6) do
        collection_select :platform_ids, Platform.all, :id, :name, { label: Platform.model_name.human(count: 2) }, { multiple: true }
      end
      col(sm: 6) do
        collection_select :publisher_ids, Publisher.all, :id, :name, { label: Publisher.model_name.human(count: 2) }, { multiple: true }
      end
    end
    text_area :description
    file_field :picture
    file_field :background_image


    sidebar do
      render 'admin/shared/images'
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:game).permit(:name, ...)
  # end
end
