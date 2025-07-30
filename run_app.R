# run_app.R

# Minimum launcher for DMP
# Assumes working directory is DnaMatchProject_v1.0.0/

source("scripts/gui/query_gui_app.R")

if (interactive()) {
  runApp(app)
}
