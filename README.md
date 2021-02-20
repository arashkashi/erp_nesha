# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Journal
Problem faced: I initially created the pipe_store_output while forgetting the order_item column but later on where added the order_item via a addColumn migration, when submitting the form the order_item_id was always null: to find the issue I the model and controllers completely and added the scaffold again from scratch but this time made them all in one shot for comparing the differences. I realized I was missing two thigns
1. I had to add the belong_to: order_item
2. I had to permit the order_item_id in the pipe_store_output controller

then I had another issue. even though in my migration I allowed for an output not to be associated with order_item_id, when saving with no item_id I would get an error, that order_item_id attribute is required. This is how to fix this
1. belongs_to: order_item, :optional => true