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
    text_area :description
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
