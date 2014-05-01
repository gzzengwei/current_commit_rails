require 'rugged'

module CurrentCommitRails

  class CommitBuilder
    class << self
      def build(path)
        get_repo(path)
        build_hash
      end

      def get_repo path
        @repo ||= Rugged::Repository.new(path)
      end

      def build_hash
        CurrentCommitRails.commit_hash = CommitHash.new(
          last_commit.oid,
          last_commit.message,
          last_commit.author[:name],
          last_commit.author[:email],
          last_commit.author[:time],
          last_commit.committer[:name],
          last_commit.committer[:email],
          last_commit.committer[:time],
          last_commit.time,
          branch
        ) 
      end

      def last_commit
        @repo.last_commit
      end

      def commit_hash
        @commit_hash
      end

      def branch
        @repo.head.name.sub(/^refs\/heads\//, '')
      end
    end
  end

end
