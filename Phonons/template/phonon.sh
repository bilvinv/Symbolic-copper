
module load python
conda activate symb_tf2
rm after_min.data POSCAR
lmp -in in-1.lammps
/global/cfs/projectdirs/m4597/Bilvin/atomsk/src/atomsk after_min.data POSCAR -ow
phonolammps in-2.lammps --dim ${des_dim} -pa ${des_pa} -c POSCAR -p --write_force_sets
phonopy --dim="${des_dim}" --pa="${des_pa}" --readfc -c POSCAR band.conf

