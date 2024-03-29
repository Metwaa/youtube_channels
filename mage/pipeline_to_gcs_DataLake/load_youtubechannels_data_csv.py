import io
import pandas as pd
import requests
if 'data_loader' not in globals():
    from mage_ai.data_preparation.decorators import data_loader
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@data_loader
def load_data_from_api(*args, **kwargs):
    url = "youtube_channels_1M_clean.csv"
    youtube_dtypes = {
                        'channel_id'                    : str,
                        'channel_link'                  : str,
                        'channel_name'                  : str,
                        'subscriber_count'              : pd.Int64Dtype(),
                        'banner_link'                   : str,
                        'description'                   : str,
                        'keywords'                      : str,
                        'avatar'                        : str,
                        'country'                       : str,
                        'total_views'                   : float,
                        'total_videos'                  : float,
                        #'join_date',
                        'mean_views_last_30_videos'     : float,
                        'median_views_last_30_videos': float,
                        'std_views_last_30_videos': float,
                        'videos_per_week': float
                    }

    parse_dates = ['join_date']


    df = pd.read_csv(url, sep=',', dtype=youtube_dtypes, parse_dates=parse_dates)#, on_bad_lines='skip',nrows=8, encoding='latin-1')#, on_bad_lines='skip', lineterminator='\n')
    #print(df.dtypes)
    return(df)