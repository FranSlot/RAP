import yaml

with open('test.yaml','r') as f : 
    print(yaml.load(f.read()))    