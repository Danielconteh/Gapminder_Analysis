# Install required packages for Quarto dashboard
install.packages(c("gapminder", "dplyr", "ggplot2", "highcharter"), 
                 repos = "https://cloud.r-project.org")

# Verify installations
cat("\nVerifying package installations:\n")
packages <- c("gapminder", "dplyr", "ggplot2", "highcharter")
for (pkg in packages) {
  if (require(pkg, character.only = TRUE, quietly = TRUE)) {
    cat(paste0("✓ ", pkg, " installed successfully\n"))
  } else {
    cat(paste0("✗ ", pkg, " installation failed\n"))
  }
}
