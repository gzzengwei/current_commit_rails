# CurrentCommitRails

Get current git commit information in Rails

## Installation

Add this line to your application's Gemfile:

    gem 'current_commit_rails'

And then execute:

    $ bundle

## Usage

Include `current_commit_rails` in your `Gemfile` (As shown above)

Get current GIT commit info via

    CurrentCommitRails.commit_hash
Example:

    CurrentCommitRails.commit_hash.sha #=> '38b96a38ec61b22cf9d385b8926cf63f4fdf3dcc'
    
Attributes including:

    [:sha, :time, :branch, :author, :author_email, :author_time, :committer, :committer_email, :comitter_time]
    

## Contributing

1. Fork it ( https://github.com/gzzengwei/current_commit_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
