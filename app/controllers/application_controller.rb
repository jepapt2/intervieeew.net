class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :search_set

    def search_set
      @search = Answer.ransack(params[:q])
    end

    def content_set
      @content_array = Array.new
      for i in 1..100 do
        @content_array.push('content_' + i.to_s)
      end
    end

    def head_set
      @head_array = Array.new
      for i in 1..100 do
        @head_array.push('head_' + i.to_s)
      end
    end

    def thumbnail
      if @a.image.present?
        @thumbnail = @a.image
      else 
        @thumbnail = @a.select_image
      end
    end

    def description(a,t)

      def cut(x,y)
        if y.present?
          return x + '.' + y
        end
      end
      @description =
      [a.overview, cut(' Q',a.question.content_1), cut('A',a.question.content_1),
        cut('Q',a.question.content_2), cut('A',a.question.content_2),
        cut('Q',a.question.content_3), cut('A',a.question.content_3),
        cut('Q',a.question.content_4), cut('A',a.question.content_4),
        cut('Q',a.question.content_5), cut('A',a.question.content_5),
        cut('Q',a.question.content_6), cut('A',a.question.content_6),
        cut('Q',a.question.content_7), cut('A',a.question.content_7),
        cut('Q',a.question.content_8), cut('A',a.question.content_8),
        cut('Q',a.question.content_9), cut('A',a.question.content_9),
        cut('Q',a.question.content_10), cut('A',a.question.content_10)]
      .compact.reject(&:empty?).join.truncate(t)
    end

    def q_content_post_set
      @q_content_post = [
        @q.content_1,
        @q.content_2,
        @q.content_3,
        @q.content_4,
        @q.content_5,
        @q.content_6,
        @q.content_7,
        @q.content_8,
        @q.content_9,
        @q.content_10,
        @q.content_11,
        @q.content_12,
        @q.content_13,
        @q.content_14,
        @q.content_15,
        @q.content_16,
        @q.content_17,
        @q.content_18,
        @q.content_19,
        @q.content_20,
        @q.content_21,
        @q.content_22,
        @q.content_23,
        @q.content_24,
        @q.content_25,
        @q.content_26,
        @q.content_27,
        @q.content_28,
        @q.content_29,
        @q.content_30,
        @q.content_31,
        @q.content_32,
        @q.content_33,
        @q.content_34,
        @q.content_35,
        @q.content_36,
        @q.content_37,
        @q.content_38,
        @q.content_39,
        @q.content_40,
        @q.content_41,
        @q.content_42,
        @q.content_43,
        @q.content_44,
        @q.content_45,
        @q.content_46,
        @q.content_47,
        @q.content_48,
        @q.content_49,
        @q.content_50,
        @q.content_51,
        @q.content_52,
        @q.content_53,
        @q.content_54,
        @q.content_55,
        @q.content_56,
        @q.content_57,
        @q.content_58,
        @q.content_59,
        @q.content_60,
        @q.content_61,
        @q.content_62,
        @q.content_63,
        @q.content_64,
        @q.content_65,
        @q.content_66,
        @q.content_67,
        @q.content_68,
        @q.content_69,
        @q.content_70,
        @q.content_71,
        @q.content_72,
        @q.content_73,
        @q.content_74,
        @q.content_75,
        @q.content_76,
        @q.content_77,
        @q.content_78,
        @q.content_79,
        @q.content_80,
        @q.content_81,
        @q.content_82,
        @q.content_83,
        @q.content_84,
        @q.content_85,
        @q.content_86,
        @q.content_87,
        @q.content_88,
        @q.content_89,
        @q.content_90,
        @q.content_91,
        @q.content_92,
        @q.content_93,
        @q.content_94,
        @q.content_95,
        @q.content_96,
        @q.content_97,
        @q.content_98,
        @q.content_99,
        @q.content_100].compact.reject(&:empty?)
    end

    def q_initial_content_post_set
      @q_initial_content_post = [
        @q.content_1,
        @q.content_2,
        @q.content_3,
        @q.content_4,
        @q.content_5,
        @q.content_6,
        @q.content_7,
        @q.content_8,
        @q.content_9,
        @q.content_10,
        @q.content_11,
        @q.content_12,
        @q.content_13,
        @q.content_14,
        @q.content_15,
        @q.content_16,
        @q.content_17,
        @q.content_18,
        @q.content_19,
        @q.content_20,
        @q.content_21,
        @q.content_22,
        @q.content_23,
        @q.content_24,
        @q.content_25,
        @q.content_26,
        @q.content_27,
        @q.content_28,
        @q.content_29,
        @q.content_30,
        @q.content_31,
        @q.content_32,
        @q.content_33,
        @q.content_34,
        @q.content_35,
        @q.content_36,
        @q.content_37,
        @q.content_38,
        @q.content_39,
        @q.content_40,
        @q.content_41,
        @q.content_42,
        @q.content_43,
        @q.content_44,
        @q.content_45,
        @q.content_46,
        @q.content_47,
        @q.content_48,
        @q.content_49,
        @q.content_50,
        @q.content_51,
        @q.content_52,
        @q.content_53,
        @q.content_54,
        @q.content_55,
        @q.content_56,
        @q.content_57,
        @q.content_58,
        @q.content_59,
        @q.content_60,
        @q.content_61,
        @q.content_62,
        @q.content_63,
        @q.content_64,
        @q.content_65,
        @q.content_66,
        @q.content_67,
        @q.content_68,
        @q.content_69,
        @q.content_70,
        @q.content_71,
        @q.content_72,
        @q.content_73,
        @q.content_74,
        @q.content_75,
        @q.content_76,
        @q.content_77,
        @q.content_78,
        @q.content_79,
        @q.content_80,
        @q.content_81,
        @q.content_82,
        @q.content_83,
        @q.content_84,
        @q.content_85,
        @q.content_86,
        @q.content_87,
        @q.content_88,
        @q.content_89,
        @q.content_90,
        @q.content_91,
        @q.content_92,
        @q.content_93,
        @q.content_94,
        @q.content_95,
        @q.content_96,
        @q.content_97,
        @q.content_98,
        @q.content_99,
        @q.content_100].map {|e| e ? e : ''}
    end
    
    def a_content_post_set
      @a_content_post = [ 
        @a.content_1, 
        @a.content_2, 
        @a.content_3, 
        @a.content_4, 
        @a.content_5, 
        @a.content_6, 
        @a.content_7, 
        @a.content_8, 
        @a.content_9, 
        @a.content_10, 
        @a.content_11, 
        @a.content_12, 
        @a.content_13, 
        @a.content_14, 
        @a.content_15, 
        @a.content_16, 
        @a.content_17, 
        @a.content_18, 
        @a.content_19, 
        @a.content_20, 
        @a.content_21, 
        @a.content_22, 
        @a.content_23, 
        @a.content_24, 
        @a.content_25, 
        @a.content_26, 
        @a.content_27, 
        @a.content_28, 
        @a.content_29, 
        @a.content_30, 
        @a.content_31, 
        @a.content_32, 
        @a.content_33, 
        @a.content_34, 
        @a.content_35, 
        @a.content_36, 
        @a.content_37, 
        @a.content_38, 
        @a.content_39, 
        @a.content_40, 
        @a.content_41, 
        @a.content_42, 
        @a.content_43, 
        @a.content_44, 
        @a.content_45, 
        @a.content_46, 
        @a.content_47, 
        @a.content_48, 
        @a.content_49, 
        @a.content_50, 
        @a.content_51, 
        @a.content_52, 
        @a.content_53, 
        @a.content_54, 
        @a.content_55, 
        @a.content_56, 
        @a.content_57, 
        @a.content_58, 
        @a.content_59, 
        @a.content_60, 
        @a.content_61, 
        @a.content_62, 
        @a.content_63, 
        @a.content_64, 
        @a.content_65, 
        @a.content_66, 
        @a.content_67, 
        @a.content_68, 
        @a.content_69, 
        @a.content_70, 
        @a.content_71, 
        @a.content_72,
        @a.content_73, 
        @a.content_74, 
        @a.content_75, 
        @a.content_76, 
        @a.content_77, 
        @a.content_78, 
        @a.content_79, 
        @a.content_80, 
        @a.content_81, 
        @a.content_82, 
        @a.content_83, 
        @a.content_84, 
        @a.content_85, 
        @a.content_86, 
        @a.content_87, 
        @a.content_88, 
        @a.content_89, 
        @a.content_90, 
        @a.content_91, 
        @a.content_92, 
        @a.content_93, 
        @a.content_94, 
        @a.content_95, 
        @a.content_96, 
        @a.content_97, 
        @a.content_98, 
        @a.content_99, 
        @a.content_100
        ]
    end

    def a_head_post_set
      @a_head_post = [
        @a.head_1,
        @a.head_2,
        @a.head_3,
        @a.head_4,
        @a.head_5,
        @a.head_6,
        @a.head_7,
        @a.head_8,
        @a.head_9,
        @a.head_10,
        @a.head_11,
        @a.head_12,
        @a.head_13,
        @a.head_14,
        @a.head_15,
        @a.head_16,
        @a.head_17,
        @a.head_18,
        @a.head_19,
        @a.head_20,
        @a.head_21,
        @a.head_22,
        @a.head_23,
        @a.head_24,
        @a.head_25,
        @a.head_26,
        @a.head_27,
        @a.head_28,
        @a.head_29,
        @a.head_30,
        @a.head_31,
        @a.head_32,
        @a.head_33,
        @a.head_34,
        @a.head_35,
        @a.head_36,
        @a.head_37,
        @a.head_38,
        @a.head_39,
        @a.head_40,
        @a.head_41,
        @a.head_42,
        @a.head_43,
        @a.head_44,
        @a.head_45,
        @a.head_46,
        @a.head_47,
        @a.head_48,
        @a.head_49,
        @a.head_50,
        @a.head_51,
        @a.head_52,
        @a.head_53,
        @a.head_54,
        @a.head_55,
        @a.head_56,
        @a.head_57,
        @a.head_58,
        @a.head_59,
        @a.head_60,
        @a.head_61,
        @a.head_62,
        @a.head_63,
        @a.head_64,
        @a.head_65,
        @a.head_66,
        @a.head_67,
        @a.head_68,
        @a.head_69,
        @a.head_70,
        @a.head_71,
        @a.head_72,
        @a.head_73,
        @a.head_74,
        @a.head_75,
        @a.head_76,
        @a.head_77,
        @a.head_78,
        @a.head_79,
        @a.head_80,
        @a.head_81,
        @a.head_82,
        @a.head_83,
        @a.head_84,
        @a.head_85,
        @a.head_86,
        @a.head_87,
        @a.head_88,
        @a.head_89,
        @a.head_90,
        @a.head_91,
        @a.head_92,
        @a.head_93,
        @a.head_94,
        @a.head_95,
        @a.head_96,
        @a.head_97,
        @a.head_98,
        @a.head_99,
        @a.head_100
        ]
    end

    def a_q_content_post_set
      @a_q_content_post = [
        @a.question.content_1, 
        @a.question.content_2, 
        @a.question.content_3, 
        @a.question.content_4,
        @a.question.content_5, 
        @a.question.content_6, 
        @a.question.content_7, 
        @a.question.content_8, 
        @a.question.content_9, 
        @a.question.content_10, 
        @a.question.content_11, 
        @a.question.content_12, 
        @a.question.content_13, 
        @a.question.content_14, 
        @a.question.content_15, 
        @a.question.content_16, 
        @a.question.content_17, 
        @a.question.content_18, 
        @a.question.content_19, 
        @a.question.content_20, 
        @a.question.content_21, 
        @a.question.content_22, 
        @a.question.content_23, 
        @a.question.content_24, 
        @a.question.content_25, 
        @a.question.content_26, 
        @a.question.content_27, 
        @a.question.content_28, 
        @a.question.content_29, 
        @a.question.content_30, 
        @a.question.content_31, 
        @a.question.content_32, 
        @a.question.content_33, 
        @a.question.content_34, 
        @a.question.content_35, 
        @a.question.content_36, 
        @a.question.content_37, 
        @a.question.content_38, 
        @a.question.content_39, 
        @a.question.content_40, 
        @a.question.content_41, 
        @a.question.content_42, 
        @a.question.content_43, 
        @a.question.content_44, 
        @a.question.content_45, 
        @a.question.content_46, 
        @a.question.content_47, 
        @a.question.content_48, 
        @a.question.content_49, 
        @a.question.content_50, 
        @a.question.content_51, 
        @a.question.content_52, 
        @a.question.content_53, 
        @a.question.content_54, 
        @a.question.content_55, 
        @a.question.content_56, 
        @a.question.content_57, 
        @a.question.content_58, 
        @a.question.content_59, 
        @a.question.content_60, 
        @a.question.content_61, 
        @a.question.content_62, 
        @a.question.content_63, 
        @a.question.content_64, 
        @a.question.content_65, 
        @a.question.content_66, 
        @a.question.content_67, 
        @a.question.content_68, 
        @a.question.content_69, 
        @a.question.content_70, 
        @a.question.content_71, 
        @a.question.content_72, 
        @a.question.content_73, 
        @a.question.content_74, 
        @a.question.content_75, 
        @a.question.content_76, 
        @a.question.content_77, 
        @a.question.content_78, 
        @a.question.content_79, 
        @a.question.content_80, 
        @a.question.content_81, 
        @a.question.content_82, 
        @a.question.content_83, 
        @a.question.content_84, 
        @a.question.content_85, 
        @a.question.content_86, 
        @a.question.content_87, 
        @a.question.content_88, 
        @a.question.content_89,
        @a.question.content_90, 
        @a.question.content_91, 
        @a.question.content_92, 
        @a.question.content_93, 
        @a.question.content_94, 
        @a.question.content_95, 
        @a.question.content_96, 
        @a.question.content_97,
        @a.question.content_98, 
        @a.question.content_99, 
        @a.question.content_100]
    end


  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end

    
end
