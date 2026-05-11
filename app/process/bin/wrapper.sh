#!/bin/bash

# --- initialise conda for non-login shell ---
CONDA_BASE="$(conda info --base 2>/dev/null)"
if [ -z "$CONDA_BASE" ]; then
  CONDA_BASE="$HOME/miniconda3"
fi
source "$CONDA_BASE/etc/profile.d/conda.sh"
# -------------------------------------------

export PATH=/home/users/andre.lanyon/.conda/envs/default_clone_nov_2025/bin:$PATH
conda activate default_clone_nov_2025

# Run first guess taf code
python ${CODE_DIR}/process_new.py

conda deactivate