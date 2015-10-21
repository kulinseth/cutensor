require 'cutensor'
local testDTensor = {}
local testSpTensor = {}
local msize = 100
local minsize = 100
local maxsize = 1000
local times = {}
local test_tolerance = 1e-5


for k,v in pairs(test) do
  test[k] = function()
    cutorch.setDevice(1)
    v()
  end
end


-- Test functions for the Core operations
function testDTensor.ttmCompute()

end

-- Test tensor times vector operation
function testDTensor.ttvCompute()

end

-- Test tensor times tensor operation
function testDTensor.tttCompute()

end

-- Unfolded tensor times Khatri-Rao product test
function testDTensor.uttKrp()

end

-- Test unfold operation which unfolds a dense tensor
-- in a specific mode
-- Unfolding of dense tensors

-- T.unfold(0)
--        array([[  1.,   4.,   7.,  10.,  13.,  16.,  19.,  22.],
--               [  2.,   5.,   8.,  11.,  14.,  17.,  20.,  23.],
--               [  3.,   6.,   9.,  12.,  15.,  18.,  21.,  24.]])
-- T.unfold(1)
--        array([[  1.,   2.,   3.,  13.,  14.,  15.],
--               [  4.,   5.,   6.,  16.,  17.,  18.],
--               [  7.,   8.,   9.,  19.,  20.,  21.],
--               [ 10.,  11.,  12.,  22.,  23.,  24.]])
-- T.unfold(2)
--        array([[  1.,   2.,   3.,   4.,   5.,   6.,   7.,   
--        8.,   9.,  10.,  11., 12.],
--               [ 13.,  14.,  15.,  16.,  17.,  18.,  19.,  
--               20.,  21.,  22.,  23., 24.]])
function testDTensor.unfold()

end

-- Test for fold() tensor along a mode
function testDTensor.fold()

end

-- Create tensor with superdiagonal all one, rest zeros
function testDTensor.teneye()
end

-- Test tensor Transpose
function testDTensor.transpose()

end

-- Test computes the Frobenius norm of Dense/Sparse tensor
function testDTensor.norm()
    
end

function cutensor.test(tests)
    tester = torch.Tester()
    tester:add(test)
    tester:run(tests)
end

cutensor.test()
return test
