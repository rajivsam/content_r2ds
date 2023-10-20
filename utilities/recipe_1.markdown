---
layout: default
title: Data Tools for Cleaning, Exploration and Validation
parent: Utilities
katex: true
---
## Data tools for cleaning and validation

Real world datasets come with noise.Identifying noise, setting up and forming data quality expectations requires the use of data cleaning and exloratory tools. This [notebook](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/ITSM/data_cleaning_with_klib.ipynb ) shows how the [klib](https://pypi.org/project/klib/) library can be used on a raw dataset to identify missing values for a dataset that contains help desk ticket information. Once the missing values are identified, an appropriate strategy, based on the application, can be used to deal with the missing values. Excellent tools are now available to explore, annotate and evaluate exploratory hypothesis on a raw dataset. This [notebook](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/ITSM/support_group_load_dtale.ipynb ) shows how the [dtale](https://pypi.org/project/dtale/ ) library can be used to explore the ITSM dataset. Once the data quality has been assessed and a noise free version of the dataset has been prepared, we can use tools like [pandera](https://pandera.readthedocs.io/en/stable/#) to assert that the quality of dataset after preprocessing meets the quality standards needed to start analysis or modelling. The [repository](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/Retail/data_quality_assessment.ipynb) contains a notebook illustrating how a data quality tool is used to arrive at denoising rules for a dataset.
{: style="text-align: justify"} 

This process can be roughly summarized as follows:
1. Inspect the dataset, form a preliminary estimate of the values that you should expect for each attribute.

2. Use basic features of _pandas_ to assess the quality for each attribute.

3. For each attribute develop a _schema_ that captures what is _admissible_ for that attribute

4. Apply the _schema_, inspect the results.

5. Repeat for each attribute and consolidate the rules.


 

