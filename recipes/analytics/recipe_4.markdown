---
layout: default
title: Frequent Items (Big Data)
parent: Analytic Recipes
---

## Description
Online applications dealing with large data flows, for example network equipment, monitoring applications, high traffic commerce websites etc., frequently need to generate activity snapshots representing a time window and the salient entities and or events in that time window.
{: style="text-align: justify"} 

### Examples
1. In an online store setting, a store operator may be interested in knowing the inventory items that are very popular and in demand during a particular time window. This information can be used for pricing and capacity planning.
2. A network operator may be interested in knowing the hosts that communicate very often and account for a large portion of the traffic flow in the network.

3. An application monitoring IOT sensor/device events in a hospital network may want to summarize the major events that occured in a particular week. 

All of these applications are characterized by high volumes of data flow. These applications may also need to be deployed on resource constrained hardware settings. Further, because of the data volume and the magnitude of the metrics under consideration, approximate answers are often sufficient. 
{: style="text-align: justify"} 

## Task Data Description

The data for this recipe is a stream. A stream abstraction is a sequence of tuples where each tuple includes:

1. The timestamp associated with the interaction

2. The identifier for the entity

3. The metric of interest, for example, the traffic flow rate, the damand in units, magnitude of measurement etc. . 
{: style="text-align: justify"} 

## Task Solution Description
Frequent Items is one of the most important and most commonly applied big data algorithms. See [this workshop series](https://www.youtube.com/watch?v=6-nAzuDRc6o&list=PLgKuh-lKre13d6vkwc3NrEh2YguAe-XLV&index=4 ) for more information. This recipe is implemented using the popular [data sketches](https://apache.github.io/datasketches-python/main/frequent_items.html) library. The recipe is implemented using a [dockerized single node confluent kafka implementation](https://github.com/rajivsam/itsm_retail_examples_r2ds/tree/main/docker). The solution consists of:

1. An admin client to set up the topic for the example

2. A producer component that streams the daily demand for store inventory items to the topic

3. A consumer client that reads the stream and uses the frequent items algorithm to estimate the top 10 most frequent inventory items sold at the store for a particular time period (first quarter of the year 2010.)

The details the implementation are available in [this repository](https://github.com/rajivsam/itsm_retail_examples_r2ds/tree/main/notebooks/Retail). More big data recipes will be added shortly.
{: style="text-align: justify"} 

 

