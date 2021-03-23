class Event < ApplicationRecord
  belongs_to :user
  belongs_to :department

  with_options presence: true do
    validates :title
    validates :start_time
    validates :end_time
  end

  validate :start_time_before_end_time # 開始時間は終了時間よりも前であること
  validate :start_time_should_be_after_current, if: :new_or_start_time_changed # 開始時間が変更・登録時、開始時間は現在時刻より後であること
  validate :start_time_cannot_be_changed # 保存済みの開始時間が現在より前の場合は、開始時間を変更できない
  validate :end_time_cannot_be_changed # 保存済みの終了時間が現在より前の場合は、終了時間を変更できない

  private

  def start_time_before_end_time
    return unless start_time && end_time

    if start_time >= end_time
      errors.add(:start_time, 'は終了時間よりも前に設定してください')
    end
  end

  def new_or_start_time_changed
    start_time.present? && (new_record? || will_save_change_to_start_time?)
  end

  def start_time_should_be_after_current
    if start_time <= Time.zone.now
      errors.add(:start_time, 'は現在時刻よりも後に設定してください')
    end
  end

  def after_event_start?
    start_time.present? && !new_record? && start_time_in_database <= Time.zone.now # 保存済みの開始時間が現在より前の場合
  end

  def start_time_cannot_be_changed
    if after_event_start?
      if will_save_change_to_start_time?
        errors.add(:start_time, 'は変更できません。予定開始時刻を過ぎています')
      end
    end
  end

  def end_time_cannot_be_changed
    if after_event_start?
      if will_save_change_to_end_time?
        errors.add(:end_time, 'は変更できません。予定開始時刻を過ぎています')
      end
    end
  end
end
