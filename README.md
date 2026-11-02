# Rails Stupid Coaching

A two-page Rails app where you ask a "coach" a question and it gives a canned, sarcastic answer.

## Context

Built in July 2020 as a Le Wagon web development bootcamp exercise ("Stupid Coaching"). The repo has two commits: the `rails new` scaffold and the exercise itself.

## What it does

- `GET /ask` shows a form with one text field.
- `GET /answer?question=...` shows your question and the coach's reply, which follows a few hard-coded rules in `QuestionsController#answer`:
  - if the question contains `?`: "Silly question, get dressed and go to work!"
  - if it exactly matches a hard-coded string with odd spacing in the code (`I am going to    work right now!`, four spaces before "work"): an empty answer. Typed with normal spacing, the sentence falls through to the default reply, so in practice this branch almost never fires
  - anything else: "I don't care, get dressed and go to work!"

There is no database model; all logic lives in one controller and two ERB views.

## Stack

Ruby 2.6.6, Rails 6.0, ERB views, SCSS (sass-rails), Webpacker 4, SQLite (default config, unused).

## Running it

With Ruby 2.6.6, Bundler and Yarn installed:

```bash
bundle install
yarn install
rails server
# open http://localhost:3000/ask
```

There is no root route, so `/` returns a routing error. The two generated controller tests use route helpers that do not match `config/routes.rb`, so they are not expected to pass as written. Visiting `/answer` without a `question` parameter raises a `NoMethodError`, because the controller calls `include?` on a nil param.

## Status

Archived learning project, not maintained. The open Dependabot branches are automatic dependency bumps and were never merged.
