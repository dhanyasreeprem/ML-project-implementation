echo "Which dataset do you want to use (glove or gn)[Enter exactly without space]: "
read dataset

save_dir=src/debiased_$dataset
debiased_dir=debiased_embeddings

mkdir -p src/$dataset\_model
mkdir -p src/debiased_$dataset

python3 src/train.py
python3 src/eval.py

mkdir -p $debiased_dir
mv $save_dir/gender_debiased.bin $debiased_dir/gp-$dataset\.bin
mv $save_dir/gender_debiased.txt $debiased_dir/gp-$dataset\.txt
rm -r src/debiased_$dataset
