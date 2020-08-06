---
title: "Other Papers"
permalink: /other-papers/
---
The papers below are either extremely rough, or are dormant (for now). There may still be something of interest in them.

## Tractable estimation and smoothing of highly non-linear dynamic state-space models.
> We present an algorithm for tractably estimating non-linear dynamic
models, such as DSGE models with occasionally binding constraints, or stochastic
volatility models. The algorithm presents an extended skew-t, augmented-state,
version of the Cubature Kalman Filter of Arasaratnam and Haykin (2009) with
dynamic state space reduction, to give adequate speed, and to ensure that it can handle
the large state spaces generated, for example, by pruned perturbation solutions to
medium-scale DSGE models. The use of an extended skew-t approximation to the
state’s distribution allows the filter to also track the distribution’s third and fourth
moments. We extend the base algorithm to allow for alternative cubature procedures
to further improve the tracking of non-linearities. We illustrate that the method can
solve some of the identification problems that plague linearized DSGE models, and
show that the method can readily handle the estimation of stochastic volatility models
with time varying correlation between level and volatility innovations. We go on to
extend the algorithm to produce smoothed estimates of states, and we use this to
assess which shocks caused the great recession in the model of Christiano, Motto, and
Rostagno (2014).

[Latest working paper](https://github.com/tholden/EST-NLSS/raw/master/EstimationPaper.pdf){: .btn .btn--warning}

## Learning from learners