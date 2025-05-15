#!/bin/bash
model=$1
current_time=$2

echo "- Model: $model"

log_file="./final_saves/${current_time}/logs/${model}_output.log"
echo "- Output: $log_file"

mkdir -p "./final_saves/${current_time}/logs"
> $log_file

for i in $(seq 6 6);
do
    start_time=$(date +%s)
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Running geo_$i..." | tee -a $log_file
    python "scripts/vllm_infer.py" --model_name_or_path "/wuhu_uni_ai/share/models/$model" --dataset "geo_${i}" --template "qwen2_vl" --save_name "./final_saves/${current_time}/$model/inference_geo_$i.jsonl" 2>&1 | tee -a $log_file
    if [ $? -ne 0 ]; then
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] Error occurred when running geo_$i" | tee -a $log_file
        exit 1
    fi
    end_time=$(date +%s)
    elapsed=$((end_time - start_time))
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Finished geo_$i (Took ${elapsed}s)" | tee -a $log_file
done
echo "[$(date +'%Y-%m-%d %H:%M:%S')] All scripts completed successfully" | tee -a $log_file