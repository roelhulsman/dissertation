# Dissertation
Roel Hulsman

The folders `datasets`, `nonconformist` and `cqr` are taken from the codebase provided by [1]. The first provides the relevant datasets. The second provides a convenient package-style implementation of split conformal prediction. The third provides a convenient package-style implementation of CQR.

See the folder `Experiments` for the main experiments, in particular see `Synthetic Example.ipynb`. The folder `Experiments Output` contains the experiment output regarding several runs using 10 seeds (23, 19, 17, 13, 11, 7, 5, 3, 2, 1). The folder `Images` contains the images used in the main article. 

Real data experiments regarding the `bike`, `community`, `concrete` and `star` datasets are in the files named correspondingly in the folder `Experiments`. The scripts should be identical except that a different dataset is used. The scripts provide output in the map `Experiments Output`.

`graphs.ipynb` contains the code used the generate the graphs in the main article, except for two graphs regarding the synthetic example which are generated in `Synthetic Example.ipynb`. The output of the script is in the map `Images`.

See the folder `Table Generator` for `Conditions Coverage Numerical Check.R`, which is a numerical check of the conditions mentioned in Proposition 3. `Table Generator.R` contains a numerical method to generate the computational tables in Appendix B.

[1] Yaniv Romano, Evan Patterson, and Emmanuel J. Candes, “Conformalized quantile regression.” 2019.
