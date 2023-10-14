---
layout: default
title: Data Cleaning with Pandera
parent: Utilities
katex: true
---
## Using Pandera for Cleaning Large Noisy Datasets

Real world datasets come with noise.Identifying noise, setting up and forming data quality expectations requires the use of data quality tools like [pandera](https://union.ai/pandera). The [repository](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/Retail/data_quality_assessment.ipynb) contains a notebook illustrating how a data quality tool is used to arrive at denoising rules for a dataset.
{: style="text-align: justify"} 

This process can be roughly summarized as follows:
1. Inspect the dataset, form a preliminary estimate of the values that you should expect for each attribute.

2. Use basic features of _pandas_ to assess the quality for each attribute.

3. For each attribute develop a _schema_ that captures what is _admissible_ for that attribute

4. Apply the _schema_, inspect the results.

5. Repeat for each attribute and consolidate the rules.


 

