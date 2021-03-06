# Project Environment
We decided on setting our Environment variable to RESEARCH_PATH.

The script that creates a new directory can be found here [directory_creator.bat](Command%20Line%20Exercises/directory_creator.bat).

# Collaboration Tools:
Slack Group and Apps for Slack were created.

[test-alice-bob](test-alice-bob) is where the toy example of the two-person workflow was carried out. The commit history on the 6th of October shows its development, including the Pull Request to merge branch 'feature-1' into 'master'.

Some branches were not deleted after being merged. This is because we wanted to preserve the history and facilitate the evaluation.

This weekend we decided to reorganize the repo and we renamed a few folders and files and this caused their commit history to look much shorter. For example, the folder "LaTeX Exercises" used to be called just "text". In Github now, when checking the history of "LaTeX Exercises" we see only two commits: [LaTeX Exercise](https://github.com/TobiasKloepper/Digital-Tools-for-Finance/commits/master/LaTeX%20Exercises). However, when checking the entire repo on an older commit and revising the "text" folder, its history is full: [old "text" folder before renaming](https://github.com/TobiasKloepper/Digital-Tools-for-Finance/commits/3927138639e22ba7f954d65d5dd6b5b4cc903661/text). We just thought it would be relevant to mention this.

# Writing with LaTeX
The folder [LaTeX Exercises](LaTeX%20Exercises) contains all the LaTex exercises.

There are multiple Papers and Presentations that fulfil the exercise requirements, but for an easier navigation please have a look at [Paper1](LaTeX%20Exercises/paper/Paper1.pdf) and [Beamer1](LaTeX%20Exercises/presentation/beamer1.pdf).

# Data Management:
Data relative to this exercise is located in [API Exercises/data](API%20Exercises/data).
API scripts are located in [API Exercises](API%20Exercises).

Scripts [connect.py](API%20Exercises/connect.py), [downstream.py](API%20Exercises/downstream.py) and [upstream.py](API%20Exercises/upstream.py) do the API job.

Notebook [API Management.ipynb](API%20Exercises/API%20Management.ipynb) does a step by step use of the scripts.

# Web API
Notebook [API_Binance.ipynb](API%20Exercises/API_Binance.ipynb) has the answers to the Binance API exercise. 

The code produces either a csv or feather file in the "%RESEARCH_PATH%/API Exercises/data" directory.

Markdown file [API_FRED](API%20Exercises/API_FRED.md) has the answers to the FRED API exercise.

# Visualization
File [Visualization.pdf](Visualization/Visualization.pdf) contains a table produced with dcolumn, a heatmap table and a color blind-friendly plot. The corresponding LaTeX file is also present [here](Visualization/marco_visualization.tex). A further PDF file with a dcolumn table and heatmap plots can be found [here](Visualization/marco_visualization.pdf) along with some other plots [here](Visualization/r_gb_5counts.pdf) and [here](Visualization/heat_hist.pdf).

# Packrat
File [myPackratExamplePlot.R](Knowledge%20Transfer/1_packrat/myPackratExamplePlot.R) has an 'exploration journal' reporting our learning experiences with the package.

A Bonus Plot made with ggplot2 can be found [here](Knowledge%20Transfer/1_packrat/diamonds_plot.pdf).

# R Shiny
It was really painful but I cannot believe that I managed to exclude stocks from the regression!!
[Woohoo!!](Knowledge%20Transfer/2_R_Shiny_Stuff/digital-tools-for-finance/r-shiny-tutorial/app.R)

When you run the app, you have checkboxGroupInput selectors on the sidebar that allow you to exclude stocks. The regression is recalculated and a new plot is displayed.

# Jupyter Notebook
A [simple notebook](Jupyter%20Notebook/students_t_distrib.ipynb) that plots a probability density function was created. The plot outputs should be present in the .ipynb file.

Additionally, a cell that uses a slider widget to modify the degrees of freedom parameter in the density function is also present, allowing the reader to see how the pdf changes instantaneously.
