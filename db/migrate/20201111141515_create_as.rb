class CreateAs < ActiveRecord::Migration[6.0]
  def change
    create_table :as do |t|
      t.string :title, null: false
      t.string :answerer
      t.text :overview
      t.string :content_1
      t.string :content_2
      t.string :content_3
      t.string :content_4
      t.string :content_5
      t.string :content_6
      t.string :content_7
      t.string :content_8
      t.string :content_9
      t.string :content_10
      t.string :content_11
      t.string :content_12
      t.string :content_13
      t.string :content_14
      t.string :content_15
      t.string :content_16
      t.string :content_17
      t.string :content_18
      t.string :content_19
      t.string :content_20
      t.string :content_21
      t.string :content_22
      t.string :content_23
      t.string :content_24
      t.string :content_25
      t.string :content_26
      t.string :content_27
      t.string :content_28
      t.string :content_29
      t.string :content_30
      t.string :content_31
      t.string :content_32
      t.string :content_33
      t.string :content_34
      t.string :content_35
      t.string :content_36
      t.string :content_37
      t.string :content_38
      t.string :content_39
      t.string :content_40
      t.string :content_41
      t.string :content_42
      t.string :content_43
      t.string :content_44
      t.string :content_45
      t.string :content_46
      t.string :content_47
      t.string :content_48
      t.string :content_49
      t.string :content_50
      t.string :content_51
      t.string :content_52
      t.string :content_53
      t.string :content_54
      t.string :content_55
      t.string :content_56
      t.string :content_57
      t.string :content_58
      t.string :content_59
      t.string :content_60
      t.string :content_61
      t.string :content_62
      t.string :content_63
      t.string :content_64
      t.string :content_65
      t.string :content_66
      t.string :content_67
      t.string :content_68
      t.string :content_69
      t.string :content_70
      t.string :content_71
      t.string :content_72
      t.string :content_73
      t.string :content_74
      t.string :content_75
      t.string :content_76
      t.string :content_77
      t.string :content_78
      t.string :content_79
      t.string :content_80
      t.string :content_81
      t.string :content_82
      t.string :content_83
      t.string :content_84
      t.string :content_85
      t.string :content_86
      t.string :content_87
      t.string :content_88
      t.string :content_89
      t.string :content_90
      t.string :content_91
      t.string :content_92
      t.string :content_93
      t.string :content_94
      t.string :content_95
      t.string :content_96
      t.string :content_97
      t.string :content_98
      t.string :content_99
      t.string :content_100
      t.string :head_1
      t.string :head_2
      t.string :head_3
      t.string :head_4
      t.string :head_5
      t.string :head_6
      t.string :head_7
      t.string :head_8
      t.string :head_9
      t.string :head_10
      t.string :head_11
      t.string :head_12
      t.string :head_13
      t.string :head_14
      t.string :head_15
      t.string :head_16
      t.string :head_17
      t.string :head_18
      t.string :head_19
      t.string :head_20
      t.string :head_21
      t.string :head_22
      t.string :head_23
      t.string :head_24
      t.string :head_25
      t.string :head_26
      t.string :head_27
      t.string :head_28
      t.string :head_29
      t.string :head_30
      t.string :head_31
      t.string :head_32
      t.string :head_33
      t.string :head_34
      t.string :head_35
      t.string :head_36
      t.string :head_37
      t.string :head_38
      t.string :head_39
      t.string :head_40
      t.string :head_41
      t.string :head_42
      t.string :head_43
      t.string :head_44
      t.string :head_45
      t.string :head_46
      t.string :head_47
      t.string :head_48
      t.string :head_49
      t.string :head_50
      t.string :head_51
      t.string :head_52
      t.string :head_53
      t.string :head_54
      t.string :head_55
      t.string :head_56
      t.string :head_57
      t.string :head_58
      t.string :head_59
      t.string :head_60
      t.string :head_61
      t.string :head_62
      t.string :head_63
      t.string :head_64
      t.string :head_65
      t.string :head_66
      t.string :head_67
      t.string :head_68
      t.string :head_69
      t.string :head_70
      t.string :head_71
      t.string :head_72
      t.string :head_73
      t.string :head_74
      t.string :head_75
      t.string :head_76
      t.string :head_77
      t.string :head_78
      t.string :head_79
      t.string :head_80
      t.string :head_81
      t.string :head_82
      t.string :head_83
      t.string :head_84
      t.string :head_85
      t.string :head_86
      t.string :head_87
      t.string :head_88
      t.string :head_89
      t.string :head_90
      t.string :head_91
      t.string :head_92
      t.string :head_93
      t.string :head_94
      t.string :head_95
      t.string :head_96
      t.string :head_97
      t.string :head_98
      t.string :head_99
      t.string :head_100
      t.string :image, null: false
      t.references :user, null: false, foreign_key: true
      t.references :q, null: false, foreign_key: true
      t.timestamps
    end
  end
end
