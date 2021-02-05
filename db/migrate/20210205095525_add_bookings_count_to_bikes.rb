class AddBookingsCountToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :bookings_count, :integer
  end
end
