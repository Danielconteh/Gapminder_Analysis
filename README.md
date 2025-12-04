# Gapminder Dashboard - Complete Documentation

## 📊 Overview

This is an interactive Quarto dashboard that provides comprehensive analysis of the Gapminder dataset (1952-2007). The dashboard features responsive design, interactive visualizations using Highcharts, and detailed statistical analysis across global and continental perspectives.

### Key Features

- ✅ **Fully Responsive**: Adapts to all screen sizes (desktop, tablet, mobile)
- ✅ **Interactive Charts**: Zoom, pan, and export capabilities on all visualizations
- ✅ **Value Boxes**: Real-time metrics displayed prominently
- ✅ **Multi-Continental Analysis**: Separate tabs for Global, Africa, Asia, Americas, Europe, and Oceania
- ✅ **Statistical Accuracy**: Proper aggregations, correlations, and trend analysis
- ✅ **Export Ready**: Download charts as PNG, JPEG, PDF, or SVG

## 📁 Files in This Project

| File                       | Description                               |
| -------------------------- | ----------------------------------------- |
| `gapminder_dashboard.qmd`  | Main Quarto dashboard source file         |
| `gapminder_dashboard.html` | Rendered HTML dashboard (open in browser) |
| `install_packages.R`       | R script to install required packages     |
| `README.md`                | This documentation file                   |

## 🚀 Quick Start

### Prerequisites

- **R** (version 4.0 or higher) - [Download R](https://cran.r-project.org/)
- **Quarto** (already installed on your system)

### Installation Steps

1. **Install Required R Packages**
   
   Open R or RStudio and run:
   ```r
   source("install_packages.R")
   ```
   
   Or install manually:
   ```r
   install.packages(c("gapminder", "dplyr", "ggplot2", "highcharter"))
   ```

2. **Render the Dashboard**
   
   ```powershell
   quarto render gapminder_dashboard.qmd
   ```
   
   Or for live preview with auto-reload:
   ```powershell
   quarto preview gapminder_dashboard.qmd
   ```

3. **View the Dashboard**
   
   Open `gapminder_dashboard.html` in any modern web browser.

## 📱 Responsive Design Features

### Desktop View
- Full multi-column layout
- All charts displayed side-by-side
- Optimal for data exploration and comparison

### Tablet View
- Adaptive column stacking
- Charts resize automatically
- Touch-friendly interactions

### Mobile View
- Single-column layout
- Scrollable content
- Optimized chart sizes
- Touch gestures for zoom and pan

### Interactive Features

All charts include:
- **Zoom**: Click and drag to zoom into specific areas
- **Pan**: Navigate zoomed charts
- **Reset**: Double-click to reset zoom
- **Export**: Download charts in multiple formats
- **Tooltips**: Hover for detailed information
- **Crosshairs**: Shared tooltips on trend charts

## 📈 Dashboard Structure

### Global Tab

**Value Boxes** (Top Row):
- Total Population: 6.25B (2007)
- Average GDP per Capita: Global mean
- Average Life Expectancy: Global mean
- Number of Countries: 142

**Visualizations**:
1. **Economic & Health Trends**: Dual-axis line chart showing GDP and life expectancy over time
2. **Life Expectancy Trend**: Multi-line chart by continent
3. **GDP vs Life Expectancy**: Bubble scatter plot (bubble size = population)
4. **Population by Country**: Top 15 countries
5. **Life Expectancy by Country**: Top 15 countries

### Continental Tabs (Africa, Asia, Americas, Europe, Oceania)

Each continent tab includes:
- **4 Value Boxes**: Continent-specific metrics
- **Economic & Health Trends**: Dual-axis time series
- **GDP vs Life Expectancy**: Scatter plot for the continent
- **Population by Country**: Top 10 countries in the continent
- **Life Expectancy by Country**: Top 10 countries in the continent

## 📊 Statistical Analysis

### Descriptive Statistics
- **Mean Calculations**: GDP per capita and life expectancy by region
- **Population Aggregations**: Total population by continent
- **Country Counts**: Number of countries per region

### Trend Analysis
- **Time Series**: Changes from 1952 to 2007
- **Year-over-Year Growth**: Implicit in line charts
- **Regional Comparisons**: Cross-continent trends

### Correlation Analysis
- **GDP vs Life Expectancy**: Logarithmic relationship visualization
- **Population Weighting**: Bubble size represents population impact
- **Continental Patterns**: Color-coded by continent

## 🎨 Customization Guide

### Changing Colors

Edit the `hc_colors()` function in any chart:
```r
hc_colors(c("#2E86AB", "#A23B72"))  # Change these hex codes
```

### Modifying Value Boxes

Change icons, colors, or values:
```r
list(
  icon = "people-fill",      # Bootstrap icon name
  color = "primary",         # primary, success, info, warning, danger
  value = "Your Value"
)
```

### Adding New Visualizations

1. Create a new section with `###` header
2. Add R code chunk with `#| title:` directive
3. Use `highchart()` or `hchart()` functions
4. Add responsive features with `hc_chart(zoomType = "x")`

### Changing Layout

Modify row heights in the markdown:
```markdown
## Row {height="20%"}  # Adjust percentage
```

## 🔧 Troubleshooting

### Dashboard Won't Render

**Problem**: Error about missing packages
**Solution**: Run `source("install_packages.R")` to install all dependencies

**Problem**: R not found
**Solution**: Add R to your system PATH or use full path to R.exe

### Charts Not Interactive

**Problem**: Charts appear static
**Solution**: Ensure `highcharter` package is installed and loaded

### Value Boxes Show Code

**Problem**: Value boxes display R code instead of values
**Solution**: Ensure you're using `#| content: valuebox` directive

### Export Not Working

**Problem**: Export button doesn't appear
**Solution**: Check that `hc_exporting(enabled = TRUE)` is included in chart code

## 📚 Technical Details

### R Packages Used

| Package     | Version | Purpose                               |
| ----------- | ------- | ------------------------------------- |
| gapminder   | Latest  | Dataset containing country statistics |
| dplyr       | Latest  | Data manipulation and aggregation     |
| ggplot2     | Latest  | Grammar of graphics (minimal use)     |
| highcharter | Latest  | Interactive Highcharts visualizations |

### Data Source

**Gapminder Dataset**:
- **Time Period**: 1952-2007 (12 time points)
- **Countries**: 142 countries
- **Continents**: 5 continents
- **Variables**: 
  - `country`: Country name
  - `continent`: Continent name
  - `year`: Year of observation
  - `lifeExp`: Life expectancy at birth (years)
  - `pop`: Total population
  - `gdpPercap`: GDP per capita (US$, inflation-adjusted)

### Chart Types

1. **Line Charts**: Time series trends
2. **Scatter Plots**: Correlation analysis
3. **Bar Charts**: Rankings and comparisons
4. **Dual-Axis Charts**: Multiple metrics on same timeline

## 🌐 Browser Compatibility

Tested and working on:
- ✅ Google Chrome (latest)
- ✅ Mozilla Firefox (latest)
- ✅ Microsoft Edge (latest)
- ✅ Safari (latest)
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## 📖 Additional Resources

- [Quarto Dashboards Documentation](https://quarto.org/docs/dashboards/)
- [Highcharter Package](https://jkunst.com/highcharter/)
- [Gapminder Data](https://www.gapminder.org/data/)
- [dplyr Documentation](https://dplyr.tidyverse.org/)

## 💡 Tips for Best Experience

1. **Use Chrome or Firefox** for best performance
2. **Full screen mode** (F11) for immersive experience
3. **Zoom charts** to explore specific time periods
4. **Export charts** for presentations or reports
5. **Compare continents** by switching between tabs
6. **Hover over data points** for detailed information

## 🤝 Support

For issues or questions:
1. Check the Troubleshooting section above
2. Verify all packages are installed correctly
3. Ensure you're using a modern web browser
4. Check Quarto version: `quarto check`

## 📝 License

This dashboard uses the Gapminder dataset, which is freely available for educational and research purposes.

---

**Created with**: Quarto Dashboard + R + Highcharter  
**Last Updated**: December 2025
