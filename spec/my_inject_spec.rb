require "my_inject"

describe Array do
 
	context "No Block" do
	 it "should returns nil for an empty array" do
	   expect([].my_inject).to be_nil
	 end

	 it "should return a result for a single element array" do
	   expect([1].my_inject).to eq 1
	 end

	 it "should return a RuntimeError" do
	 	x = [1,2,3]
	 	expect{x.my_inject}.to raise_error(RuntimeError)
	 end
	end

	context "Block Provided but empty" do
		it "should return nil for an empty array" do
		  expect([].my_inject).to be_nil
		end

		it "should return a result for a single element array" do
			expect([1].my_inject).to eq 1
		end

		it "should do return nil" do
		  expect([1,2].inject{}).to be_nil
		end

	end

	context "The Block filled in" do 
		it "should add up to 3" do
		  expect([1,2].inject{|acc,el| acc+el}).to eq 3
		end
		
		it "should mult up to 2" do
		  expect([1,2].inject{|acc,el| acc*el}).to eq 2
		end

		it "should add up to 6" do
		  expect([1,2,3].inject{|acc,el| acc+el}).to eq 6
		end		

		it "should mult up to 6 " do
		  expect([1,2,3].inject{|acc,el| acc*el}).to eq 6
		end
	end

	context "accumulator provided" do
		it "should should return 1st element" do
			expect([].inject(1){|acc,el| acc+el}).to eq 1  
		end

		it "should return 0" do
		  expect([].inject(0){|a,b| a*b}).to eq 0
		end
		
		it "should should return" do
		  expect([].inject(1){|a,b| ab}).to eq 1
		end

	end

	context "normal use" do
		it "should should add up everything" do
			expect([1,2,3].inject(1){|acc,el| acc+el}).to eq 7 
		end

		it "should should multiply up everything" do
			expect([1,2,3].inject(2){|acc,el| acc*el}).to eq 12
		end
		it "should should multiply to 0" do
			expect([1,2,3].inject(0){|acc,el| acc*el}).to eq 0
		end

		it "should should multiply to 0" do
			expect([2,3,4].inject(5){|acc,el| acc*el}).to eq 120
		end

		it "should should multiply to 24" do
			expect([2,3,4].inject{|acc,el| acc*el}).to eq 24
		end

		it "should should return  to 24" do
			expect([2,3,4].inject{|acc,el| acc-el}).to eq -5
		end		



	end




end