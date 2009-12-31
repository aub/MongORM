require File.join(File.dirname(__FILE__), 'spec_helper')

describe 'creating documents' do
  it 'should save a document when I create one' do
    Publication.first.should be_nil
    Publication.count.should == 0
    Publication.create(:city => 'Tampa')
    Publication.count.should == 1
    Publication.first.should_not be_nil
    Publication.first.city.should == 'Tampa'
  end
end
