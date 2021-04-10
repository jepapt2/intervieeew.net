class Answer < ApplicationRecord
  belongs_to :question, optional: true
  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy 
  mount_uploader :image, ImageUploader
  acts_as_taggable
  generate_public_uid

  def to_param
    public_uid
  end

  validates :title, presence: true, length: { maximum: 50 }
  validates :answerer, length: { maximum: 10 }
  validates :overview, length: { maximum: 1000 }
  validates :image_or_select, presence: true
  with_options length: { maximum: 255 } do
    validates :content_1
    validates :content_2
    validates :content_3
    validates :content_4
    validates :content_5
    validates :content_6
    validates :content_7
    validates :content_8
    validates :content_9
    validates :content_10
    validates :content_11
    validates :content_12
    validates :content_13
    validates :content_14
    validates :content_15
    validates :content_16
    validates :content_17
    validates :content_18
    validates :content_19
    validates :content_20
    validates :content_21
    validates :content_22
    validates :content_23
    validates :content_24
    validates :content_25
    validates :content_26
    validates :content_27
    validates :content_28
    validates :content_29
    validates :content_30
    validates :content_31
    validates :content_32
    validates :content_33
    validates :content_34
    validates :content_35
    validates :content_36
    validates :content_37
    validates :content_38
    validates :content_39
    validates :content_40
    validates :content_41
    validates :content_42
    validates :content_43
    validates :content_44
    validates :content_45
    validates :content_46
    validates :content_47
    validates :content_48
    validates :content_49
    validates :content_50
    validates :content_51
    validates :content_52
    validates :content_53
    validates :content_54
    validates :content_55
    validates :content_56
    validates :content_57
    validates :content_58
    validates :content_59
    validates :content_60
    validates :content_61
    validates :content_62
    validates :content_63
    validates :content_64
    validates :content_65
    validates :content_66
    validates :content_67
    validates :content_68
    validates :content_69
    validates :content_70
    validates :content_71
    validates :content_72
    validates :content_73
    validates :content_74
    validates :content_75
    validates :content_76
    validates :content_77
    validates :content_78
    validates :content_79
    validates :content_80
    validates :content_81
    validates :content_82
    validates :content_83
    validates :content_84
    validates :content_85
    validates :content_86
    validates :content_87
    validates :content_88
    validates :content_89
    validates :content_90
    validates :content_91
    validates :content_92
    validates :content_93
    validates :content_94
    validates :content_95
    validates :content_96
    validates :content_97
    validates :content_98
    validates :content_99
    validates :content_100
  end
  with_options length: { maximum: 20 } do
    validates :head_1
    validates :head_2
    validates :head_3
    validates :head_4
    validates :head_5
    validates :head_6
    validates :head_7
    validates :head_8
    validates :head_9
    validates :head_10
    validates :head_11
    validates :head_12
    validates :head_13
    validates :head_14
    validates :head_15
    validates :head_16
    validates :head_17
    validates :head_18
    validates :head_19
    validates :head_20
    validates :head_21
    validates :head_22
    validates :head_23
    validates :head_24
    validates :head_25
    validates :head_26
    validates :head_27
    validates :head_28
    validates :head_29
    validates :head_30
    validates :head_31
    validates :head_32
    validates :head_33
    validates :head_34
    validates :head_35
    validates :head_36
    validates :head_37
    validates :head_38
    validates :head_39
    validates :head_40
    validates :head_41
    validates :head_42
    validates :head_43
    validates :head_44
    validates :head_45
    validates :head_46
    validates :head_47
    validates :head_48
    validates :head_49
    validates :head_50
    validates :head_51
    validates :head_52
    validates :head_53
    validates :head_54
    validates :head_55
    validates :head_56
    validates :head_57
    validates :head_58
    validates :head_59
    validates :head_60
    validates :head_61
    validates :head_62
    validates :head_63
    validates :head_64
    validates :head_65
    validates :head_66
    validates :head_67
    validates :head_68
    validates :head_69
    validates :head_70
    validates :head_71
    validates :head_72
    validates :head_73
    validates :head_74
    validates :head_75
    validates :head_76
    validates :head_77
    validates :head_78
    validates :head_79
    validates :head_80
    validates :head_81
    validates :head_82
    validates :head_83
    validates :head_84
    validates :head_85
    validates :head_86
    validates :head_87
    validates :head_88
    validates :head_89
    validates :head_90
    validates :head_91
    validates :head_92
    validates :head_93
    validates :head_94
    validates :head_95
    validates :head_96
    validates :head_97
    validates :head_98
    validates :head_99
    validates :head_100
  end

  scope :created_at_limit,
    -> { order('id desc').limit(5) }

  scope :favorites_order,
  -> { order('favs desc') }


  ransacker :favorites_count do
    query = '(SELECT COUNT(favorites.answer_id) FROM favorites where favorites.answer_id = answers.id GROUP BY favorites.answer_id)'
    Arel.sql(query)
  end

private
  def image_or_select
    image.present? || select_image.present?
  end
end
