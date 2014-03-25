module KnowledgeBase::Sectionables
  class List < Sectionable
    has_many :items, -> { order 'position ASC' }

    has_many :sections, dependent: :destroy

    accepts_nested_attributes_for :items, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{title}"
    end
  end
end
