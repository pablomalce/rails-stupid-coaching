# Rails Stupid Coaching

A two-page Rails app where you ask a "coach" a question and it gives a canned, sarcastic answer.

## Context

Built in July 2020 as a Le Wagon web development bootcamp exercise ("Stupid Coaching"). The repo has two commits: the `rails new` scaffold and the exercise itself.

## What it does

- `GET /ask` shows a form with one text field.
- `GET /answer?question=...` shows your question and the coach's reply, which follows a few hard-coded rules in `QuestionsController#answer`:
  - if the question contains `?`: "Silly question, get dressed and go to work!"
  - if it exactly matches one hard-coded "I am going to work right now!" string: an empty answer
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

There is no root route, so `/` returns a routing error. The two generated controller tests use route helpers that do not match `config/routes.rb`, so they are not expected to pass as written.

## Status

Archived learning project, not maintained. The open Dependabot branches are automatic dependency bumps and were never merged.
