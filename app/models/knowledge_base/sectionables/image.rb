module KnowledgeBase::Sectionables
  class Image < Sectionable
    mount_uploader :image, KnowledgeBase::ImageUploader

    def to_s
      "#{super}: #{caption}"
    end
  end
end
