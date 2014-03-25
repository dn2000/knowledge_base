module KnowledgeBase::Sectionables
  class Video < Sectionable
    VIDEO_ID_EXPRESSION = %r{^https?://(?:(?:www|m)\.)?youtube\.com/watch\?v=([^&]+)}

    has_many :sections, dependent: :destroy

    def youtube_id
      url[VIDEO_ID_EXPRESSION, 1]
    end

    def to_s
      "#{super} ##{id}: #{url}"
    end
  end
end
