---
layout: default
title: Tools and Utilities
parent: Development
katex: true
---
As someone who has worked in software development for over two decades, the range, versatility and quality of tools we have today to facilitate every aspect of data centric application design amazes me. Today, we have very high quality open source implementations for almost every task we encounter in developing a data science solution. It is fairly accurate to say that, as a data science solution developer, more than ever before, data science solutiond developers can devote more of thier time to use case and application specific issues rather than wrangling with peripheral implementation issues that don't really add value to the solution being developed. This page is a running list of some really impressive tools that I have across. In no particular order, these are:
{: style="text-align: justify"}

*  Data Cleaning: Some really awesome tools for data cleaning that I ran into recently are:
    * [Dtale](https://github.com/man-group/dtale): Good tool to quickly inspect and explore a dataset, reasonably good documentation. I used this for exploring support groups in the ITSM dataset[notebook](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/ITSM/support_group_load_dtale.ipynb) . The github repository has many references to detailed documentation.
     {: style="text-align: justify"}

    * [Klib](https://github.com/akanz1/klib): I liked the missing value feature in this library. Not very sure if it is still maintained or under active development. I used this library for exploring the [ITSM dataset](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/ITSM/data_cleaning_with_klib.ipynb) 
    {: style="text-align: justify"}

    * [Autoclean](https://github.com/elisemercury/AutoClean): I personally liked this tool the best for data cleaning. It takes a pipeline centric view of the data cleaning process. It aims at automatically identifying the issues and taking sensible default actions to fixing these issues. So ideally, you should be able to start with a raw dataset at the source end of the pipeline and receive a fully processed datafile that is ready for data analysis as a product. I tried using this to fix the raw data errors on the [retail dataset](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/Retail/autoclean_eval_retail.ipynb). I will personally be watching this project. Kudos to the author. Great work.
    {: style="text-align: justify"}

    * [AI-Einblick-Prompt](https://www.einblick.ai/ai-einblick-prompt/): How can we miss generative AI today. This tool can be installed as Jupyter notebook extension/widget. You can use prompts to generate pandas code for reading files, cleaning and pre-processing tasks - drop null values etc. There is a full featured [product](https://www.einblick.ai/) with a drawing canvas and more UI bells and whistles. It is also fully hosted. I used the [Jupyter widget version](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/Retail/prompt_generated_cleaning.ipynb) for generating the data file for the bi-clustering task for the retail example.
    {: style="text-align: justify"}

* Development Containers: I evaluated [github codespaces](https://docs.github.com/en/codespaces/overview). It makes porting and operationalizing your application very straight forward. This would definitely relieve a lot of pain and friction in operationalizing a developed data science solution. This [talk](https://www.youtube.com/watch?v=QbbYj56s7HU&t=922s) provides an overview of the features and the problem it aims to solve. Personally, I love this idea.
{: style="text-align: justify"}


* Stream Processing: I do think we will see the need for analytics and machine learning applications move towards stream processing. The stream algorithms in the [data sketches](https://datasketches.apache.org/) library are pretty impressive. I tried using this on [retail dataset](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/notebooks/Retail/kafka_freq_items_consumer.ipynb) to determine frequently purchased items. This is a Kafka based solution. A container specification for the solution is available [here](https://github.com/rajivsam/itsm_retail_examples_r2ds/blob/main/docker/docker-compose.yml). 
{: style="text-align: justify"}

* Big Data Processing: As datasets get bigger, finding a representative dataset for your particular problem can be an important usecase. Sketching, Sub-Modularity and Bayesian Experimental Approaches can be applied for this. Stay tuned for examples illustrating these ideas.
{: style="text-align: justify"}   




 

