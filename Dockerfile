FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
#RUN bundle config --global frozen 1

#WORKDIR ~/Documents/GitHubRepos/RubyEssentials

#COPY Gemfile Gemfile.lock ./
#RUN bundle install

#COPY . .
COPY . /usr/src/app  
WORKDIR /usr/src/app

#CMD ["./index.rb"]
CMD ["ruby","index.rb"]
