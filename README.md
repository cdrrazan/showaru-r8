# Showaru - Link Hub

## Overview

This is a Ruby on Rails 8.0.2 application built using Ruby 3.4.2. It leverages Hotwire (Turbo/Stimulus) and Importmaps for JavaScript functionality, with Bootstrap 5 handling the UI styling (likely via the `bootstrap` and `dartsass-rails` gems). The backend uses PostgreSQL via ActiveRecord and Devise for authentication. The testing suite is built with RSpec.

---

## Core Tech Stack

* **Framework:** Rails 8.0.2
* **Language:** Ruby 3.4.2
* **Database:** PostgreSQL (`pg` gem)
* **Frontend:**
    * Hotwire (`turbo-rails`, `stimulus-rails`)
    * Importmaps (`importmap-rails`) for JS management
    * Bootstrap 5 (`bootstrap` gem) for CSS/JS components
    * Sass (`dartsass-rails` likely) for CSS preprocessing
* **Authentication:** Devise (`devise` gem)
* **Testing:** RSpec (`rspec-rails` gem), Capybara (likely included for system specs)
* **Web Server:** Puma (default)

---

## Prerequisites

Ensure you have the following installed:

* Ruby 3.4.2 (use a version manager like rbenv/rvm)
* Bundler
* PostgreSQL Server
* Node.js & Yarn (Recommended for managing JS dependencies like Bootstrap's JS/Popper.js if not handled purely by importmaps, or other potential asset pipeline tasks)

---

## Quick Start

1.  **Clone & Setup:**
    ```bash
    git clone [https://github.com/cdrrazan/showaru-r8.git](https://github.com/cdrrazan/showaru-r8.git) # Or the correct repo URL
    cd showaru-r8 # Or the correct directory name
    bundle install
    yarn install # May be needed for Bootstrap JS dependencies
    ```

2.  **Database Setup:**
    * Ensure your local PostgreSQL server is running.
    * Verify connection details in `config/database.yml`. Adjust if needed.
    ```bash
    rails db:create
    rails db:migrate
    # rails db:seed # Optional: Check db/seeds.rb for content
    ```

3.  **Run:**
    ```bash
    bin/dev
    ```
    Access at `http://localhost:3000`. This should use `Procfile.dev` to start the Rails server and any necessary asset watchers (like `dartsass:watch`).

---

## Testing

* Uses the RSpec framework, configured via `rspec-rails`.
* Run the full spec suite:
    ```bash
    bundle exec rspec
    ```
* System specs likely use Capybara; ensure appropriate browser webdrivers are installed and accessible.

---

## Configuration Highlights

* **Database:** `config/database.yml`
* **Secrets/Credentials:** `config/credentials.yml.enc` (Edit via `bin/rails credentials:edit`)
* **Routing:** `config/routes.rb`
* **Environment Configs:** `config/environments/*.rb`
* **RSpec Config:** Check `.rspec`, `spec/spec_helper.rb`, `spec/rails_helper.rb`.

---

## Deployment Considerations

* Standard Rails deployment procedures apply.
* Ensure `RAILS_ENV=production`.
* Set `DATABASE_URL` and `RAILS_MASTER_KEY` environment variables.
* Precompile assets: `rails assets:precompile`. Verify JS/CSS (Bootstrap, Popper) are correctly bundled/served.

---
