# Sync Project

Welcome to the Sync Project! This project aims to demonstrate and utilize our popular data stack, which includes dbt, Snowflake, and Looker. This repository will serve as a collaborative space for data engineers and analysts to build, test, and visualize data models and pipelines.

## Table of Contents

- [Introduction](#introduction)
- [Project Setup](#project-setup)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Sync Project is designed to streamline data workflows and enhance data visibility. By leveraging dbt for data transformations, Snowflake as the data warehouse, and Looker for data visualization, we aim to provide a robust framework for modern data engineering tasks.

## Project Setup

### Prerequisites

Before you start, ensure you have the following installed on your local machine:

- [dbt](https://www.getdbt.com/)
- [Snowflake](https://www.snowflake.com/)
- [Looker](https://looker.com/)
- [PostgreSQL](https://www.postgresql.org/)
- Python 3.12
- Git

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/lucasudar/data-engineering-project.git
   cd data-engineering-project
2. Create DB and schema in Cloud
3. Setting up the Env
   ```bash
   python3 -m venv env
   source env/bin/activate
   pip install pandas sqlalchemy psycopg2-binary xlrd openpyxl
4. Transfer all data to your prepared DB
   ```bash
   cd data/
   python3 trasfer.py