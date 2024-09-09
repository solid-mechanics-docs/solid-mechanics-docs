# Solid-mechanics-docs
Authors :
- Basile Audoly, basile.audoly@polytechnique.edu
- Corrado Maurini, corrado.maurini@sorbonne-universite.fr

*Copyright (c) 2024. All rights reserved.*

# Dimensional reduction of a beam model (linear elasticity)

Using the assumption of cylindrical invariance, we derive the effective elastic constitutive paramaters of a one-dimensional beam model representing a prismatic elastic body.
In this elementary presentation, we limit attention to linear elasticity and neglect any gradient effect (i.e., we derive the leading-order contributions to the 1D energy).
The approach works for arbitrary shapes of cross-section, arbitrary material symmetries and constitutive laws, and does not require the elastic properties to be homogeneous in the cross-section.
It does not make any ad hoc kinematic assumption such as unshearability. A numerical illustration based on the FEniCx library is provided for the case of a homogeneous, elliptical cross-section made up of a isotropic (Hookean) material.

Documentation:
- [HTML](https://html-preview.github.io/?url=https://github.com/solid-mechanics-docs/solid-mechanics-docs/blob/main/beam-dimension-reduction-basic/doc-html/beam-dimension-reduction-basic.html)
- [PDF](https://github.com/solid-mechanics-docs/solid-mechanics-docs/blob/main/beam-dimension-reduction-basic/doc/beam-dimension-reduction-basic.pdf)

FEniCSx finite-element code:
- [code](https://github.com/solid-mechanics-docs/solid-mechanics-docs/blob/main/beam-dimension-reduction-basic/code/elastic-beams-code.ipynb)
