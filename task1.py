import argparse
import logging
from datetime import datetime

parser = argparse.ArgumentParser(description='Read in inputs')
parser.add_argument('input1')
parser.add_argument('input2')
args = parser.parse_args()
input1 = vars(args)['input1']
input2 = vars(args)['input2']

day = date.now().strftime('%d_%m_%Y')
logging.basicConfig(filename='log_test_script_{}_{}.log'.format(SPECIES_ID,day), level=logging.INFO, filemode='w')
logger = logging.getLogger(__name__)
logger.info('Hi, im a log')

print('testing 1 2 3', input1, input2)
