class UpdateCardService
  def initialize(user_id, shop_id, star_count)
    @user_id = user_id
    @shop_id = shop_id
    @star_count = star_count.to_i
    @counter = 0
  end

  def call
    @card = Card.where(user_id: @user_id, shop_id: @shop_id, status: "pending").first
    if @card.present?
      update_card
    else
      create_new_card(@star_count)
    end
  end

  private

  def create_new_card(count)
    @card = Card.new(user_id: @user_id, shop_id: @shop_id, star_count: count)
    @card.save
  end

  def update_card
    @counter = 0
    @card = Card.where(user_id: @user_id, shop_id: @shop_id, status: "pending").first
    @star_count.to_i.times do
      if @card.star_count < Shop.find(@shop_id).max_stars
        @card.update(star_count: @card.star_count + 1)
        @card.update(status: "completed") if @card.star_count == Shop.find(@shop_id).max_stars
        @counter += 1
      else
        create_new_card(@star_count - @counter)
      end
    end
  end
end
