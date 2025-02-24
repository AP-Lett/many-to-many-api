class Gadget < ApplicationRecord
  validates :name,
    presence: true

  validate :sku_starts_with_gad

  private

  def sku_starts_with_gad
    puts "-----------------------------------------"
    puts "Godget model's sku_starts_with_gad method"
    puts "-----------------------------------------"

    return if sku.blank?

    unless sku.start_with?("GAD-")
      errors.add(:sku, "must start with 'GAD-'")
    end
  end
end
