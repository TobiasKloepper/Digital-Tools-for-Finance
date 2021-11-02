import pandas as pd
from connect import DATAPATH

def put_beverage(data, beverage, series, filetype = "csv"):
    filename = DATAPATH + "/" + beverage + "_" + series + "." + filetype
    
    if filetype == "csv":
        data.to_csv(filename)
        
    if filetype == "feather":
        data.to_feather(filename)