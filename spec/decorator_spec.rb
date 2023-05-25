

# RSpec.describe TrimmerDecorator do
#     describe '#correct_name' do
#       it 'trims the name if it is longer than 10 characters' do
#         nameable = double('Nameable', correct_name: 'VeryLongName')
#         decorator = TrimmerDecorator.new(nameable)
  
#         expect(decorator.correct_name).to eq('VeryLongNa')
#       end
  
#       it 'does not trim the name if it is shorter than or equal to 10 characters' do
#         nameable = double('Nameable', correct_name: 'ShortName')
#         decorator = TrimmerDecorator.new(nameable)
  
#         expect(decorator.correct_name).to eq('ShortName')
#       end
#     end
#   end