# Data Engineering Zoomcamp 2024 - Project

This repository contains my final project for the <a href='https://github.com/DataTalksClub/data-engineering-zoomcamp'> Data Engineering Zoomcamp </a> by <a href="https://github.com/DataTalksClub"> DataTalks Club </a>. 

I decided to focus on analyzing a YouTube dataset.

# Problem Description
YouTube is a massive video platform with countless videos, channels, and subscribers. However, all this data is stored in a basic format (like a csv) that makes it difficult to explore and gain insights.

# Objective
Develop an interactive data analysis dashboard to unlock insights from YouTube's subscriber and channel data. This dashboard will:

- Identify the country with the highest number of YouTube subscribers.
- Visualize the distribution of channels across different countries.
- Showcase the most viewed channels globally.
- Provide an overall view of YouTube's total subscriber base.

# Used Technologies
- Google Cloud Platform
  - Compute Engine - virtual machine.
  - Google Cloud Storage - Data Lake.
  - Google BigQuery - Data Warehouse.
- Terraform - as Infrastructure-as-Code (IaC) tool.
- Mage - as an orchestration.
- dbt - for transformation of raw data in refined data.
- Google Looker studio - for visualizations.

I created a data pipeline that leverages Kaggle as the data source for YouTube channel information. This pipeline utilizes Mage orchestration to efficiently transfer the data to Google Cloud Storage. Once in storage, the data is loaded into BigQuery, a powerful data warehouse platform. To transform the raw data into a refined format suitable for analysis, I implemented dbt, a popular data transformation tool. 
Finally, I used Looker Studio, a business intelligence platform, to visualize the transformed data in an interactive dashboard.

# Pipeline

# Reproduce 

# Visualizations

The interactive dashboards 👉 <a href="https://lookerstudio.google.com/embed/reporting/df502bd5-f6cc-4563-9426-27aa2a3771a6/page/LO8tD"> click here </a>

<img src="images/YouTube Channels Analysis Dashboard.jpg"> 
