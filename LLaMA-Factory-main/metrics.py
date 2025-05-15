import json
import random
import argparse
parser = argparse.ArgumentParser(description="args")
parser.add_argument("--input_path", "-i", type=str, help="input file path", required=True)
parser.add_argument("--output_path", "-o", type=str, help="output file path", required=True)
args = parser.parse_args()
problems_file = args.input_path

problems_data = []
with open(problems_file, 'r', encoding='utf-8') as f:
    for line in f:
        problems_data.append(json.loads(line))

full_correct = 0
for data in problems_data:
    predict = data['predict']
    label = data['label']
    predict = predict.replace(' ','')
    predict = predict.replace('\n','')
    label = label.replace(' ','')
    label = label.replace('\n','')
    label = label.replace('<|im_end|>','')
    label = label.replace('</s>','')
    if predict == label:
        full_correct += 1 # 完全正确

Acc = full_correct / len(problems_data)

save_name = args.output_path

with open(save_name,'w+') as f:
    f.write("acc: " + str(Acc))