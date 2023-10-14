---
layout: default
title: Action Cost
parent: Analytic Recipes
---

## Description
Frequently, analytics use cases require us to compute the cost of taking an action and then evaluating the upside and downsides to taking that action. Knowing the cost of taking an action can help us apply decision theoretic or tools from economics to make an optimal choice for a particular use case.
{: style="text-align: justify"} 
### Examples

* Fraud Detection: Should an application recommend rejection of a loan application or an approval of a loan application
{: style="text-align: justify"} 

* Data Deduplication and Record Linking : In data integration applications, we need to evaluate if two documents that share information refer to the same entity.
{: style="text-align: justify"} 

* Computer and Network Security : Is the new request received by a network data processing unit similar to a malicious request?

## Task Data Description
To put this in a simple decision theoretic setting, we will consider the case where there are two actions. Let's call them the positve and the negative action. To make a cost based decision we need the following:


1. The cost of making a correct (optimal decision), this can be zero.

2. The cost of a false positive. If we have data, we can compute an expected value of a false positive. If we have access to a domain expert, we could ask them to provide an estimate for us.

3. The cost of a false negative. As with the false positive cost, this too can be estimated from data if it is available or provided to us by a domain expert.

NOTE: A/B testing can be employed for certain problems.


## Task Solution Description
See the example in the [learning with costs repository](https://github.com/rajivsam/learning_with_costs/blob/main/notebooks/preliminary_exploration_2010_7a_data.ipynb), for an example of a cost calculation. This example deals with loans backed by the _Small Business Administration_. This example deals with [7(a) loans](https://www.sba.gov/funding-programs/loans/7a-loans) made to small businesses. The positive task is associated with a loan that is cancelled or charged off. The negative task is associated with a loan that is repaid in full. Machine learning applications with this data can make better decisions when the cost of a false positive is known. A false positive is incurred by a machine learning model when it predicts that a loan will be cancelled when in reality it turns out to be paid in full. A false negative is incurred by a machine learning model when it predicts that a loan will be paid in full but in reality it turns out that the loan needs to be cancelled.

*  To calculate the false positive costs, we estimate the expected value of the interest earned from the loan over the life of the loan using the set of loans that are paid in full. 

* To calculate the false negative costs, we estimate the expected value of the loan principal amounts for the set of loans that have to cancelled.

  {: style="text-align: justify"}
  

## Related Recipes

* Learning with costs

* A/B testing 
 

 

