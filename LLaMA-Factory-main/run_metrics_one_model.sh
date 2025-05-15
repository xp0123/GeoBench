model=$1
save_dir=$2

for i in $(seq 1 6);
do
    python ./metrics.py -i "$save_dir/$model/inference_geo_$i.jsonl" -o "$save_dir/$model/inference_geo_${i}_metrics.txt"
done