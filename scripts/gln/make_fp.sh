# ensure conda is properly initialised, such as by using the line below
# source /cm/shared/engaging/anaconda/2018.12/etc/profile.d/conda.sh
conda activate rxnebm

gln_seed=$1
python gen_proposals/gen_fps_from_proposals.py \
    --log_file GLN_${gln_seed}_50top200max_makefp.log \
    --proposals_file_prefix "GLN_200topk_200maxk_noGT_${gln_seed}" \
    --output_file_prefix "GLN_${gln_seed}_rxn_fps_50topk_200maxk_16384_hybrid_all" \
    --topk 50 \
    --maxk 200 \
    --radius 3 \
    --fp_size 16384 \
    --rxn_type "hybrid_all"