# Football Data Analysis
By leverging historical data from the current season, it is possible to identify trends, recurring results and behaviors for the different teams. We divide the standing into groups and analyze how the various teams perform against that group, both in home and away matched. 

Combining these insights with an intuitive visualization it is possible to use this notebook to have an overview over possible trends, past key metrics to try to predict the outcome of an upcoming match.

### How to use the notebook
The magic happpens in this [notebook](Analysis.ipynb). Just scroll though the code to see intuitive graphs such as these ones.

![No Goal - Leicster](./images/nogoal-leicster.png)

![Result Trend - Leicster](./images/resulttrend-leicster.png)


It is enough to change the teams and competion under **Configuration** and then execute all cells and get the various metrics.

### Env file
It is also necessary to create a .env file with a token to query the [api.football-data.org](https://www.football-data.org/) APIs.

The file is a simple text file to be places in the root folder of the project with this structure:
```
footaball_data_token=<token>
season=<current season>
```

## Pratical Steps to Run the Project

To run the project locally is it simple to use Docker. Create a container to host the jupyter notebook app and spin it up.

#### Create working container to run jupyter
```
docker build -t pypipenv39 .
```
#### Execute container to run jupyter
```
docker run -p 8888:8888 -v $(pwd):/app pypipenv39
```

