class Pick < ActiveRecord::Base
  belongs_to :bet_sheet
  belongs_to :answer
end
