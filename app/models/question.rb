class Question < ApplicationRecord
  acts_as_taggable
  generate_public_uid
  belongs_to :user, optional: true
  has_many :answers, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :content_1, presence: true
  validates :content_2, presence: true
  validates :content_3, presence: true
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
  
  def to_param
    public_uid
  end
  

  ransacker :reply_count do
    query = '(SELECT COUNT(answers.question_id) FROM answers where answers.question_id = questions.id GROUP BY answers.question_id)'
    Arel.sql(query)
  end


end
