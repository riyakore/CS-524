module AvGasData

using Random

export inputs, outputs, treat_cost, blend_cost, jetA_prod_cost, onehunLL_prod_cost, demand, rm_cost, avail, req1_per, req2_per, req1_lim, req2_lim, T

# Define parameters
P = 17 # number of raw inputs
T = 6 # number raw inputs that must be treated

inputs = 1:P # set of raw inputs
treat = 1:T # for simplicity, first T inputs must be treated
outputs = 1:2 # set of products

# Production costs (per gallon)
treat_cost = 2.0
blend_cost = 1.5
jetA_prod_cost = 3.0
onehunLL_prod_cost = 2.4

# Set a seed for generating consistent data
seed = 9834573
Random.seed!(seed)

# Demand for each product
demand = [Random.rand(5000:10000) for j in outputs]

# Cost of each input ($/gallon)
rm_cost = [Random.rand(1:5) for i in inputs]

# Availability of each input (gallons)
avail = [Random.rand(1000:8000) for i in inputs]

# Percent of requirement 1 in each input
req1_per = [round(2.0*Random.rand()+5, digits=2) for i in inputs]

# Percent of requirement 2 in each input
req2_per = [round(4*Random.rand()+3, digits=2) for i in inputs]

# Max percent of requirement 1 in each output
req1_lim = 5.5
# Max percent of requirement 2 in each output
req2_lim = 5.9

end # module
