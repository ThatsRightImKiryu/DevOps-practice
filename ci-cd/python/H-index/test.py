import unittest
import solution

class SquareEqSolverTestCase(unittest.TestCase):
    def test_zero(self):
       res = solution.Solution().hIndex([0])
       self.assertEqual(res, 0)
    
    def test_one(self):
       res = solution.Solution().hIndex([1])
       self.assertEqual(res, 1)
    
    def test_one_two(self):
       res = solution.Solution().hIndex([1, 2])
       self.assertEqual(res, 1)
    
    def test_two_three(self):
       res = solution.Solution().hIndex([2, 3])
       self.assertEqual(res, 2)
    
    def test_three_two(self):
       res = solution.Solution().hIndex([3, 2])
       self.assertEqual(res, 2) 

    def test_three_three(self):
       res = solution.Solution().hIndex([3, 3])
       self.assertEqual(res, 2) 
    
    def test_long_arr(self):
       res = solution.Solution().hIndex([4, 1, 2, 5, 4])
       self.assertEqual(res, 3) 

    def test_empty(self):
       res = solution.Solution().hIndex([])
       self.assertEqual(res, 0) 