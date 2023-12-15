class Group < ApplicationRecord
    belongs_to :user
    has_many :entities, dependent: :destroy
    ICONS = {
      'fa-house' => 'Home',
      'fa-cart-shopping' => 'Shopping Cart',
      'fa-car' => 'Car',
      'fa-truck-medical' => 'Medical Truck',
      'fa-piggy-bank' => 'Piggy Bank',
      'fa-credit-card' => 'Credit Card',
      'fa-globe' => 'World or Global',
      'fa-briefcase' => 'Business or Work',
      'fa-film' => 'Movie or Entertainment',
      'fa-graduation-cap' => 'Education or Learning',
      'fa-music' => 'Music or Audio',
      'fa-calendar' => 'Calendar or Events',
      'fa-wrench' => 'Tools or Settings',
      'fa-heart' => 'Favorites or Health',
      'fa-plane' => 'Travel or Flight',
      'fa-gamepad' => 'Gaming or Entertainment',
      'fa-microphone' => 'Podcast or Audio',
      'fa-camera' => 'Photography or Images'
    }.freeze
  
   
    validates :icon, presence: true, inclusion: { in: ICONS.keys }
  
    def total_amount
      entities.sum(:amount)
    end
end
  