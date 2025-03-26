
module load python
conda activate adilpyth
cp -r /global/cfs/cdirs/m4597/adil/symbolic/DFT/dft_data_creation/22may24_minim/trial/${des_met}/CONTCAR POSCAR
phonopy -d --dim 2 2 2