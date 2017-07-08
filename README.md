# vile-rails-circleci-demo

See: [Continuous Analysis For Your Rails Project Using Vile and CircleCI](https://medium.com/forthright/continuous-analysis-for-your-rails-project-using-vile-and-circleci-4fb077378ab6)

*hacking:*

    git clone https://github.com/forthright/vile-rails-circleci-demo.git
    cd vile-rails-circleci-demo
    gem install bundler
    npm i -g vile
    bundle
    npm i
    rake db:migrate
    rake test
    vile analyze
