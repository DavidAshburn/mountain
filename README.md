# README

- Ruby 3.1.2

- PostgreSQL 14.5

- Tailwind

- pdfjs_viewer-rails gem for PDF reader

- PDF files must be registered in app/assets/config/manifest.js for pre-compilation

Getting started

environments/development.rb config.assets.debug = true

bundle install rake assets:clean rake assets:precompile bin/dev