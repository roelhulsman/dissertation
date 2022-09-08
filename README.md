# Dissertation MSc Statistical Science 
Roel Hulsman
University of Oxford

The folders `datasets`, `nonconformist` and `cqr` are taken from the codebase provided by [1]. The first provides the relevant datasets. The second provides a convenient package-style implementation of split conformal prediction. The third provides a convenient package-style implementation of CQR.

See `Synthetic Example.ipynb` for the main experiments. The script provides output in the folder `Experiments Output` and 2 images in the folder `Images`.

Real data experiments regarding the `bike`, `community`, `concrete` and `star` datasets are in the files named correspondingly. The scripts should be identical except that a different dataset is used. The scripts provide output in the map `Experiments Output`.

`graphs.ipynb` contains the code used the generate the graphs in the main article, except for two graphs regarding the synthetic example which are generated in `Synthetic Example.ipynb`. The output of the script is in the map `Images`.

`Conditions Coverage Numerical Check.R` contains a numerical check of the conditions mentioned in Proposition 3, and a numerical method to generate the computational tables in Appendix B.

[1] Yaniv Romano, Evan Patterson, and Emmanuel J. Candes, “Conformalized quantile regression.” 2019.
