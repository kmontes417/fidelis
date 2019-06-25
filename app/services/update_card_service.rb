class UpdateCardService
  def initialize(user, shop, star_count)
    @user = user
    @shop = shop
    @star_count = star_count.to_i
  end

  def call
    @card = Card.find_by(user: @user, shop: @shop, status: "pending")
    if @card.present?
      update_card
    else
      create_new_card(@star_count)
    end
  end

  private

  def create_new_card(count)
    new_card = Card.new(user: @user, shop: @shop, star_count: count)
    new_card.save!
  end

  def update_card
    counter = 0
    @card = Card.find_by(user: @user, shop: @shop, status: "pending")
    @star_count.times do
      if @card.star_count < Shop.find(@shop.id).max_stars
        @card.update(star_count: @card.star_count + 1)
        @card.update(status: "completed") if @card.star_count == Shop.find(@shop.id).max_stars
        counter += 1
      else
        create_new_card(@star_count - counter)
        return
      end
    end
  end

  def change_card_status
    @card = Card.find params[:id]
    @card.status = "closed"
  end
end
