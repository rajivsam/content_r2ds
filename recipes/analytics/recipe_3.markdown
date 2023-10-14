---
layout: default
title: Entity Demand/Load
parent: Analytic Recipes
---

## Description
In general, web applications capture interactions between business services and entities and human users. The frequency of such interactions serve as a measure of demand for the entity or the load on a service. 
{: style="text-align: justify"} 

### Examples
In the retail domain, the demand for an entity could feed into applications such as dynamic pricing models. These models need information about the demand for an entity. The repository also contains an example from IT service management. This recipe can be applied to compute the ticket load for help desk support groups. This information can be used for planning and scheduling purposes.
{: style="text-align: justify"} 

## Task Data Description

The data for this recipe should include:

1. The timestamp associated with the interaction

2. The identifier for the entity
{: style="text-align: justify"} 

## Task Solution Description
This recipe is quite straight forward and consists of the following steps:

1. Aggeregate the interactions over time for each entity id

2. Apply additional computation on the aggregation if needed by the use-case

An example of applying this recipe to compute the demand for store inventory products is [available here](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/Retail/item_demand.ipynb). A review of the notebook will show that inventory item demand for a particular time period has a long tail distribution. A small handful of store inventory accounts for must of the business at the store. This could be used by store managers for inventory planning and pricing applications. An example of applying this recipe to compute the load on different support groups in a help desk application is [available here](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/ITSM/support_group_load.ipynb). This information can be useful to understand the workload for the support groups for a particular period of time. These examples are from very different domains, but the recipe to compute the demand is similar.
{: style="text-align: justify"} 

 

