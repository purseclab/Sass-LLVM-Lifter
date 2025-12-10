
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import os
import yaml

# Default config
default_config = {
	'csv_path': 'data/instruction_counts.csv',
	'title': 'SASS Instruction Implementation Status',
	'xlabel': 'Instruction (Top 50 by Count)',
	'ylabel': 'Count (from NVIDIA cuBLAS library)',
	'output': 'result.png',
	'figsize': [20, 8]
}

# Try to load config.yaml if present
config_path = 'config.yaml'
if os.path.exists(config_path):
	with open(config_path, 'r') as f:
		user_config = yaml.safe_load(f)
	config = {**default_config, **user_config}
else:
	config = default_config

df = pd.read_csv(config['csv_path'])

plt.figure(figsize=tuple(config.get('figsize', [20, 8])))

green_patch = mpatches.Patch(color='green', label='Implemented')
red_patch = mpatches.Patch(color='red', label='Not Implemented')
colors = df['Implemented'].apply(lambda x: 'green' if x == 'T' else 'red')

plt.bar(df['Instruction'], df['Count'], color=colors)

plt.title(config['title'])
plt.xlabel(config['xlabel'])
plt.ylabel(config['ylabel'])
plt.xticks(rotation=90, fontsize=9)
plt.grid(axis='y', linestyle='--', alpha=0.7)

# plt.show()
plt.legend(handles=[green_patch, red_patch])
plt.savefig(config['output'], dpi=300)