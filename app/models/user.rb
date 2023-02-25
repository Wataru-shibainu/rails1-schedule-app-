class User < ApplicationRecord
  validates :title, presence:{ message: "タイトルは入力必須項目です（20文字以内）"}
  validates :title, length:{maximum: 20, message: "タイトルは20文字以内で入力して下さい"}
  validates :memo, length:{maximum: 500, message: "スケジュールメモはは500文字以内で入力して下さい"}
  
  validate :date_check
  def date_check
    if startdate.blank? && enddate.blank?
      errors.add(:base, "開始日、終了日は設定必須項目です")
    elsif startdate.blank?
      errors.add(:base, "開始日を設定して下さい")
    elsif enddate.blank?
      errors.add(:base, "終了日を設定して下さい")
    elsif startdate > enddate
      errors.add(:base, "終了日は開始日以降に設定して下さい")
    end
  end
end

