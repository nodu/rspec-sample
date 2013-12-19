require 'spec_helper'

describe CocaCola do
  describe "#validates" do 
    context "when there is no name provided" do
      it 'should be invalid ' do
        coca_cola = CocaCola.new(name: nil)
        coca_cola.valid?.should eq false

        # .should or should_not
        # When testing a method, '#' goes in front

      end
    
    end
    context "when there is no name provided" do
      it 'should be invalid ' do
        coca_cola = CocaCola.new(name: "Something")
        coca_cola.valid?.should eq true
      end
    end
  end

  describe "#description" do
    it 'should retun name and price' do
      coca_cola = CocaCola.new(name: "Zero", price: 1.5 )
      coca_cola.description.should eq "Zero at $1.5"
    end



    it 'should retun name and price' do
      coca_cola = CocaCola.new(name: "Sugar", price: 5.5 )
      coca_cola.description.should eq "Sugar at $5.5"
    end

  end


end
