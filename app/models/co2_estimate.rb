class Co2Estimate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  belongs_to :user

  def exam_math(params)
    return 999666
  end
end
