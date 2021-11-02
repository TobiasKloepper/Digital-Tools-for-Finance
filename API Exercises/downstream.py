import pandas as pd
from connect import DATAPATH

def get_beverage(beverage = "beer", series = "consumption", filetype = "csv"):
    filename = DATAPATH + "/" + beverage + "_" + series + "." + filetype
    
    if filetype == "csv":
        data = pd.read_csv(filename)
    
    if filetype == "feather":
        data = pd.read_feather(filename)
    
    return data
    
    