# Shiny Application for Statistical Data Analysis

Shiny Application for EDA of Slovak Statistical Office open data.
This repository contains a Shiny application built using the Rhino framework in R. The app provides an intuitive interface for accessing and analyzing statistical data from the national statistical office, accessible via an API.

## Purpose
The primary goal of this application is to simplify the process of exploring and analyzing statistical data, making it more accessible for:

- **Students**: Helping them work with large datasets efficiently and understand statistical patterns through visualizations and basic analysis.
- **Businesses**: Providing tools for in-depth data analysis and enabling them to make data-driven decisions.

## Features
- **API Integration**: Seamlessly fetch data from the statistical office.
- **Data Selection**: Filter and choose relevant datasets based on categories, time periods, and regions.
- **Visualization**: Generate dynamic graphs and tables for better insights.
- **Analysis Tools**: Perform basic and advanced data analysis, such as summary statistics and correlations.
- **Data Export**: Download processed datasets in CSV or Excel formats.
- **User-Friendly Interface**: Intuitive design tailored to both novice and experienced users.

## Project Structure
```
project/
├── data/           # Raw and processed data storage
├── R/              # Core application functions
├── tests/          # Unit tests for application components
├── config/         # API and application configuration files
├── www/            # Static files (CSS, images, JavaScript)
├── modules/        # Modularized application components
│   ├── data_fetch.R        # Module for fetching data from API
│   ├── data_viz.R          # Module for data visualization
│   └── data_analysis.R     # Module for data analysis
├── app.R           # Main script to run the application
└── README.md       # Project documentation
```

## Setup
### Prerequisites
- R version 4.4.2 or later
- Required R packages: `rhino` `shiny`, `bslib`, `dplyr`, `ggplot2`, `httr`, `jsonlite`

## How to Use
1. Launch the app by running the `app.R` file.
2. Navigate through the following main sections:
   - **Home**: Overview of the app’s features.
   - **Data Selection**: Choose datasets to work with.
   - **Visualization**: Generate and customize graphs and tables.
   - **Analysis**: Apply statistical tools to analyze data.
3. Follow the in-app guide for detailed instructions.

## Contributing
Contributions are welcome! If you have suggestions or improvements, please:
1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m 'Add feature-name'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request.

## License
This project is licensed under the GNU General Public License (GPL). See the LICENSE file for details.

## Contact
For any inquiries or support, please contact [kakas@cleandata.sk].
