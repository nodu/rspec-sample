rails new spec-sample -T


group :development, :test do
  gem 'rspec-rails' 
end


rake -T # to list all rakes

rails generate spec:install  # generate helpers for rspec

rake db:migrate

rake spec  # run the test 



rails generate model coca_cola name price:decimal

rake
rake db:migrate
rake spec

coca_cola_spec.rb
require 'spec_helper'

describe CocaCola do
  describe "#validates" do
    context "when there is no name provided" do
      it 'should be invalid ' do
        coca_cola = CocaCola.new(name: nil)
        coca_cola.valid?.should eq false

        # .should or should_not
       
      end
   
    end
    context "when there is no name provided" do
      it 'should be invalid ' do
        coca_cola = CocaCola.new(name: "Something")
        coca_cola.valid?.should eq true
      end
    end
  end
end





rake spec  # fails

Added 'validates :name, presence: true' into the CocaCola Model

rake spec # passes !  

#Build test, run, write code


Travis-ci  #continuous integration for github/server

factory mock stub?


