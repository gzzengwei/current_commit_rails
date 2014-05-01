module CurrentCommitRails

  class << self
    attr_accessor :commit_hash
  end

  CommitHash = Struct.new(
    :sha, 
    :message, 
    :author, 
    :author_email, 
    :author_time, 
    :committer, 
    :committer_email, 
    :committer_time, 
    :time, 
    :branch
  )
end
