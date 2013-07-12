module BadgesHelper
  
  def self.badges_by_classification
    badges = {}
    badges[:novice] = Badge.novice
    badges[:experienced] = Badge.experienced
    badges[:expert] = Badge.expert
    badges
  end
end
