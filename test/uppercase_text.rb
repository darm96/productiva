requiere 'minitest/autorun'

class UppercaseTest < Minitest::Test
	def test_case_change 
		down_text = 'abcd'
		upper_text = down_text.upcase	

		assert_equal 'ABCD', upper_text
	end
end