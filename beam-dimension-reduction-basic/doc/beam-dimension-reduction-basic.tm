<TeXmacs|2.1.4>

<style|<tuple|article|preview-ref|comment>>

<\body>
  <\hide-preamble>
    <assign|t:|<syntax|:|\<cdot\>>>

    <assign|t.:|<syntax|<shift|\<therefore\>||.06em>|\<cdot\>>>
  </hide-preamble>

  <doc-data|<doc-title|A compendium on dimension reduction<next-line>for
  slender elastic beams>|<doc-author|<author-data|<author-name|Basile
  Audoly>|<\author-affiliation>
    LMS, École polytechnique
  </author-affiliation>>>|<doc-author|<author-data|<author-name|Corrado
  Maurini>|<\author-affiliation>
    d'Alembert, Sorbonne Université
  </author-affiliation>>>|<doc-date|<date>>>

  <abstract-data|<\abstract>
    Using the assumption of cylindrical invariance, we derive a
    one-dimensional beam model representing a prismatic elastic body. In this
    elementary presentation, we limit attention to <em|linear> elasticity and
    neglect any gradient effect (<em|i.e.>, we derive the leading-order
    contributions to the 1D energy). The approach works for arbitrary shapes
    of cross-section, arbitrary material symmetries and constitutive laws,
    and does not require the elastic properties to be homogeneous in the
    cross-section. It does not make any <em|ad hoc> kinematic assumption such
    as unshearability.<new-line><new-line><em|This work is licensed under a
    \<#2018\>Creative Commons BY\<#2019\> licence.>
    <htab|5mm><smash|<image|figs/by-licence.png|50pt|||>>
  </abstract>>

  <subsection|Formulation of the 3D elasticity problem>

  In reference configuration, the prismatic 3D body occupies the domain
  <math|\<Omega\>\<times\>\<bbb-R\>> where <math|\<Omega\>> is the reference
  cross-sectional domain. We denote by <math|\<partial\>\<Omega\>> the
  boundary of the domain <math|\<Omega\>> in <math|\<bbb-R\><rsup|2>> and by
  <math|\<b-n\><around*|(|S|)>\<in\>\<bbb-R\><rsup|2>> the unit outer normal
  at any point of <math|\<partial\>\<Omega\>>.

  The cross-sectional coordinate is denoted as
  <math|\<b-X\>\<in\>\<bbb-R\><rsup|2>> and the axial coordinate as
  <math|Z\<in\>\<bbb-R\>>.

  The 3D displacement field is denoted as
  <math|<wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>>, where tildas are used to
  mark three-dimensional quantities (as opposed to two-dimensional quantities
  obtained by the forthcoming reduction):

  <\equation*>
    <wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>\<of\>\<Omega\>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|3>.
  </equation*>

  \;

  The linearized strain <math|<wide|\<b-varepsilon\>|~><around*|(|\<b-X\>,Z|)>>
  is given by

  <\equation>
    <wide|\<b-varepsilon\>|~><around*|(|<wide|\<b-u\>|~>|)>=<frac|1|2>*<around*|(|<wide|\<nabla\>|~><wide|\<b-u\>|~>+<wide|\<nabla\>|~><wide|\<b-u\>|~><rsup|\<top\>>|)>
  </equation>

  where <math|<wide|\<nabla\>|~>> is the 3D gradient

  <\equation>
    <wide|\<nabla\>|~>=<around*|(|\<nabla\>,<frac|\<partial\>|\<partial\>Z>|)>
  </equation>

  and <math|\<nabla\>> is the 2D gradient

  <\equation>
    \<nabla\>=<around*|(|<frac|\<partial\>|\<partial\>X<rsub|1>>,<frac|\<partial\>|\<partial\>X<rsub|2>>|)>.
  </equation>

  \;

  In the absence of distributed load, the potential energy takes the form

  <\equation>
    <wide|\<Phi\>|~><around*|[|<wide|\<b-u\>|~>|]>=<big|int><rsub|\<Omega\>\<times\>\<bbb-R\>><wide|W|~><around*|(|<wide|\<b-varepsilon\>|~>|)>*\<mathd\><rsup|2>\<b-X\>*\<mathd\>Z-<wide|\<cal-L\>|~><rsub|<text|ts>>,<label|eq:elastic-Phi>
  </equation>

  where <math|<wide|W|~><around*|(|<wide|\<b-varepsilon\>|~>|)>> is the
  quadratic strain energy density of the material, and
  <math|<wide|\<cal-L\>|~><rsub|<text|ts>>> is the work of the loading
  applied on the remote terminal cross-sections, located at
  <math|Z=\<pm\>\<infty\>>. This remote loading is left unspecified.

  Equilibrium solutions <math|<wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>> are
  found by making the energy <math|<wide|\<Phi\>|~><around*|[|<wide|\<b-u\>|~>|]>>
  in<nbsp>(<reference|eq:elastic-Phi>) stationary. We proceed to derive them
  variationally. Perturbing an equilibrium solution
  <math|<wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>> with a test function
  <math|<wide|\<b-v\>|~><around*|(|\<b-X\>,Z|)>>, we obtain the directional
  derivative of the total potential energy as

  <\equation>
    <tabular|<tformat|<table|<row|<cell|\<mathD\><wide|\<Phi\>|~><around*|(|<wide|\<b-u\>|~>;<wide|\<b-v\>|~>|)>>|<cell|=>|<cell|<around*|\<nobracket\>|<frac|\<mathd\><wide|\<Phi\>|~><around*|(|<wide|\<b-u\>|~>+h*<wide|\<b-v\>|~>|)>|\<mathd\>h>|\|><rsub|h=0>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|\<Omega\>\<times\>\<bbb-R\>><wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~><around*|(|<wide|\<b-v\>|~>|)>|)><value|t:><wide|\<b-varepsilon\>|~><around*|(|<wide|\<b-v\>|~>|)>*\<mathd\><rsup|2>\<b-X\>*\<mathd\>Z-<wide|\<cal-L\>|~><around*|[|<wide|\<b-v\>|~>|]>>>>>><label|eq:3D-principle-virtual-work>
  </equation>

  where <math|<wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~>|)>> is
  the elastic stress

  <\equation>
    <wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~>|)>\<assign\><frac|\<partial\><wide|W|~>|\<partial\><wide|\<b-varepsilon\>|~>><around*|(|<wide|\<b-varepsilon\>|~>|)>.<label|eq:3D-stress-general-CL>
  </equation>

  \;

  The stationarity condition is that the first variation of energy
  in<nbsp>(<reference|eq:3D-principle-virtual-work>) is zero for any
  perturbation <math|<wide|\<b-v\>|~>>,

  <\equation>
    \<forall\><wide|\<b-v\>|~>,<application-space|2em>\<mathD\><wide|\<Phi\>|~><around*|(|<wide|\<b-u\>|~>;<wide|\<b-v\>|~>|)>=0.
  </equation>

  Integrating by parts, we obtain the equilibrium equations in the bulk in
  the form

  <\equation>
    div <wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~>|)>=\<b-0\><text|<space|1em>in
    <math|\<Omega\>>>
  </equation>

  along with the boundary conditions

  <\equation>
    <wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~>|)>\<cdot\>\<b-n\>=\<b-0\><text|<space|1em>on
    <math|\<partial\>\<Omega\>>>.
  </equation>

  The boundary conditions on the terminal cross-sections
  <math|Z=\<pm\>\<infty\>> are not detailed.

  <subsection|Axially invariant solutions>

  We consider particular solutions such that the strain is independent of the
  axial coordinate <math|Z>,

  <\equation>
    <frac|\<partial\><wide|\<b-varepsilon\>|~><around*|(|<wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>|)>|\<partial\>Z>=0.<label|eq:invariant-strain>
  </equation>

  From the viewpoint of beam theory, this corresponds to <em|uniform>
  stretching, bending and twisting strains along the axis.

  We denote as <math|e\<in\>\<bbb-R\>> the constant axial strain,
  <math|\<b-k\>=<around*|(|k<rsub|1>,k<rsub|2>|)>\<in\>\<bbb-R\><rsup|2>> the
  constant bending strain and <math|\<tau\>\<in\>\<bbb-R\>> the constant
  twisting strain:

  <\itemize>
    <item>the axial strain <math|e> is dimensionless and measures the
    relative elongation of the centerline

    <item>the curvature strain <math|\<b-k\>> is the curvature of the
    centerline, and is homogeneous to the inverse of a length

    <item>the twisting strain <math|\<b-k\>> is the derivative of the twist
    angle of the cross-section with respect to the axial coordinate <math|Z>,
    and is homogeneous to the inverse of a length too.
  </itemize>

  \;

  The displacement <math|\<b-u\>\<in\>\<bbb-R\><rsup|3>> on a reference
  cross-section <math|Z=0> is denoted as

  <\equation>
    \<b-u\><around*|(|\<b-X\>|)>=<wide|\<b-u\>|~><around*|(|\<b-X\>,0|)>\<in\>\<bbb-R\><rsup|3>,
  </equation>

  for <math|\<b-X\>\<in\>\<Omega\>>. The displacement
  <math|\<b-u\><around*|(|\<b-X\>|)>> is a 3D-vector, defined on a 2D domain
  <math|\<Omega\>>,

  <\equation>
    \<b-u\>\<of\>\<Omega\>\<rightarrow\>\<bbb-R\><rsup|3>.
  </equation>

  The projections of <math|\<b-u\>> onto the cross-section (included in the
  plane spanned by <math|\<b-e\><rsub|1>> and <math|\<b-e\><rsub|2>>), and
  onto the axis (along <math|\<b-e\><rsub|3>>) are denoted as
  <math|\<b-u\><rsup|\<parallel\>><around*|(|\<b-X\>|)>\<in\>\<bbb-R\><rsup|2>>
  and <math|u<rsup|\<perp\>><around*|(|\<b-X\>|)>\<in\>\<bbb-R\>>,
  respectively:

  <\equation>
    \<b-u\><around*|(|\<b-X\>|)>=<around*|(|\<b-u\><rsup|\<parallel\>><around*|(|\<b-X\>|)>,u<rsup|\<perp\>><around*|(|\<b-X\>|)>|)>.
  </equation>

  We postulate that the invariant solution
  <math|<wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>> in the entire tube can be
  reconstructed from the displacement on the particular cross-section
  <math|Z=0> as

  <\equation>
    <wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>=e*Z*\<b-e\><rsub|3>-<frac|Z<rsup|2>|2>*\<b-e\><rsub|3>\<times\>\<b-k\>+Z*<around*|(|\<b-k\>+\<tau\>*\<b-e\><rsub|3>|)>\<times\>\<b-X\>+\<b-u\><around*|(|\<b-X\>|)>,<label|eq:invariant-displacement>
  </equation>

  where the successive terms represent

  <\itemize>
    <item>a rigid-body translation of the cros-sections along the
    longitudinal vector <math|e*Z*\<b-e\><rsub|3>> representing uniform
    stretching,

    <item>a rigid-body translation of the cros-sections along the transverse
    vector <math|-<frac|Z<rsup|2>|2>*\<b-e\><rsub|3>\<times\>\<b-k\>>
    capturing the bending of the centerline

    <item>a rigid-body rotation of the cross-sections with (infinitesimal)
    rotation angle <math|Z*<around*|(|\<b-k\>+\<tau\>*\<b-e\><rsub|3>|)>>
    caused by the combined action of bending and stretching,

    <item>a <em|non-rigid> deformation of cross-sections associated with the
    displacement <math|\<b-u\><around*|(|\<b-X\>|)>>, which by assumption is
    independent of the longitudinal coordinate <math|Z>.
  </itemize>

  The homogeneous solutions introduced in<nbsp>(<reference|eq:invariant-strain>)
  and<nbsp>(<reference|eq:invariant-displacement>) are meant to approximate
  solutions that vary <em|slowly> in the longitudinal direction. Homogeneous
  solutions are instrumental to dimensional reduction.

  To check the consistency of<nbsp>(<reference|eq:invariant-strain>)
  and<nbsp>(<reference|eq:invariant-displacement>), we calculate the strain
  associated with the displacement in<nbsp>(<reference|eq:invariant-displacement>)
  and the result is

  <\equation>
    <wide|\<b-varepsilon\>|~><around*|(|<wide|\<b-u\>|~><around*|(|\<b-X\>,Z|)>|)>=\<b-varepsilon\><around*|(|\<b-u\><around*|(|\<b-X\>|)>|)>-\<b-varepsilon\><rsub|0><around*|(|\<b-X\>|)>,<label|eq:eps-tilde-reduction>
  </equation>

  where <math|\<b-varepsilon\><around*|(|\<b-X\>|)>> is the strain arising
  from the cross-sectional displacement <math|\<b-u\><around*|(|\<b-X\>|)>>,

  <\equation>
    <tabular|<tformat|<table|<row|<cell|\<b-varepsilon\><around*|(|\<b-u\>|)>>|<cell|=>|<cell|<frac|\<nabla\>\<b-u\>+<around*|(|\<nabla\>\<b-u\>|)><rsup|\<top\>>|2>>>|<row|<cell|>|<cell|=>|<cell|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>+\<nabla\>u<rsup|\<perp\>>\<odot\>\<b-e\><rsub|3>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-row-span|2>|<cwith|1|1|1|1|cell-col-span|2>|<cwith|1|1|1|1|cell-valign|c>|<table|<row|<cell|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>>|<cell|>|<cell|<frac|1|2>*<frac|\<partial\>u<rsup|\<perp\>>|\<partial\>X<rsub|1>>>>|<row|<cell|>|<cell|>|<cell|<frac|1|2>*<frac|\<partial\>u<rsup|\<perp\>>|\<partial\>X<rsub|2>>>>|<row|<cell|<frac|1|2>*<frac|\<partial\>u<rsup|\<perp\>>|\<partial\>X<rsub|1>>>|<cell|<frac|1|2>*<frac|\<partial\>u<rsup|\<perp\>>|\<partial\>X<rsub|2>>>|<cell|0>>>>>,>>>>>
  </equation>

  the symbol <math|\<odot\>> denotes the symmetrized tensor product,

  <\equation>
    \<b-a\>\<odot\>\<b-b\>=<frac|\<b-a\>\<otimes\>\<b-b\>+\<b-b\>\<otimes\>\<b-a\>|2>,
  </equation>

  <math|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>>
  is the apparent 2D strain,

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>>|<cell|=>|<cell|<frac|\<nabla\>\<b-u\><rsup|\<parallel\>>+<around*|(|\<nabla\>\<b-u\><rsup|\<parallel\>>|)><rsup|\<top\>>|2>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|2|2|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-rborder|0ln>|<table|<row|<cell|<frac|\<partial\>u<rsub|1><rsup|\<parallel\>>|\<partial\>X<rsub|1>>>|<cell|<frac|1|2>*<around*|(|<frac|\<partial\>u<rsub|1><rsup|\<parallel\>>|\<partial\>X<rsub|2>>+<frac|\<partial\>u<rsub|2><rsup|\<parallel\>>|\<partial\>X<rsub|1>>|)>>>|<row|<cell|<frac|1|2>*<around*|(|<frac|\<partial\>u<rsub|1><rsup|\<parallel\>>|\<partial\>X<rsub|2>>+<frac|\<partial\>u<rsub|2><rsup|\<parallel\>>|\<partial\>X<rsub|1>>|)>>|<cell|<frac|\<partial\>u<rsub|1><rsup|\<parallel\>>|\<partial\>X<rsub|2>>>>>>>,>>>>>
  </equation*>

  and <math|\<b-varepsilon\><rsub|0><around*|(|\<b-X\>|)>> is a pre-strain
  arising from the macroscopic strain <math|<around*|(|e,\<b-k\>,\<tau\>|)>>,
  defined by

  <\equation>
    <tabular|<tformat|<table|<row|<cell|\<b-varepsilon\><rsub|0><around*|(|\<b-X\>|)>>|<cell|=>|<cell|-<around*|<left|(|2>|e*\<b-e\><rsub|3>+<around*|(|\<b-k\>+\<tau\>*\<b-e\><rsub|3>|)>\<times\>\<b-X\>|<right|)|2>>\<odot\>\<b-e\><rsub|3>>>|<row|<cell|>|<cell|=>|<cell|-<around*|<left|(|2>|e*\<b-e\><rsub|3>+\<b-k\>\<times\>\<b-X\>|<right|)|2>>\<odot\>\<b-e\><rsub|3>-\<tau\>*<around*|(|\<b-e\><rsub|3>\<times\>\<b-X\>|)>\<odot\>\<b-e\><rsub|3>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<cwith|3|3|1|2|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|0ln>|<cwith|1|2|3|3|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|0>|<cell|<frac|\<tau\>|2>*X<rsub|2>>>|<row|<cell|0>|<cell|0>|<cell|-<frac|\<tau\>|2>*X<rsub|1>>>|<row|<cell|<frac|\<tau\>|2>*X<rsub|2>>|<cell|-<frac|\<tau\>|2>*X<rsub|1>>|<cell|\<varepsilon\><rsup|0><rsub|3\<nocomma\>3><around*|(|\<b-X\>|)>>>>>>,>>>>>
  </equation>

  whose longitudinal component is given by

  <\equation>
    \<varepsilon\><rsup|0><rsub|3\<nocomma\>3><around*|(|\<b-X\>|)>=-<around*|(|e+k<rsub|1>*X<rsub|2>-k<rsub|2>*X<rsub|1>|)>.<label|eq:eps-0>
  </equation>

  \;

  The effective 2D energy takes the form

  <\equation>
    \<Phi\><around*|[|e,\<b-k\>,\<tau\>;\<b-u\>|]>=<big|int><rsub|\<Omega\>>W<around*|(|\<b-varepsilon\><around*|(|\<b-u\>|)>,e,\<b-k\>,\<tau\>|)>*\<mathd\><rsup|2>\<b-X\>,
  </equation>

  where <math|W<around*|(|\<b-varepsilon\><around*|(|\<b-u\>|)>,e,\<b-k\>,\<tau\>|)>>
  is obtained by inserting<nbsp>(<reference|eq:eps-tilde-reduction>\U<reference|eq:eps-0>)
  into the strain energy density <math|<wide|W|~><around*|(|<wide|\<b-varepsilon\>|~>|)>>,

  <\equation>
    W<around*|(|\<b-varepsilon\><around*|(|\<b-u\>|)>,e,\<b-k\>,\<tau\>|)>=<wide|W|~><around*|(|\<b-varepsilon\><around*|(|\<b-u\>|)>-\<b-varepsilon\><rsub|0>|)>.<label|eq:W-tilde-to-W>
  </equation>

  \;

  Next, we minimize the effective 2D potential
  <math|\<Phi\><around*|[|\<b-u\>;e,\<b-k\>,\<tau\>|]>> with respect to the
  cross-sectional displacement, and denote as <math|\<b-u\><rprime|\<star\>>>
  the optimum,

  <\equation*>
    \<forall\>\<b-v\>,<separating-space|1em>\<mathD\>\<Phi\><around*|[|e,\<b-k\>,\<tau\>;\<b-u\><rprime|\<star\>>;\<b-v\>|]>=\<b-0\>.
  </equation*>

  The optimal cross-sectional displacement is <math|\<b-u\><rprime|\<star\>>>
  typically unique up to rigid-body translation, and rigid-body rotation
  about the axis <math|\<b-e\><rsub|3>>.

  <\remark>
    The minimization problem above is <em|not> invariant by rigid-body
    rotations about the cross-sectional vectors <math|\<b-e\><rsub|1>> and
    <math|\<b-e\><rsub|2>>, which correspond to shear modes of the 3D beam
    by<nbsp>(<reference|eq:invariant-displacement>).
  </remark>

  By linearity, the relaxed strain <math|<wide|\<b-varepsilon\>|~><rprime|\<star\>>>
  can be written as

  <\equation>
    <tabular|<tformat|<table|<row|<cell|<wide|\<b-varepsilon\>|~><rprime|\<star\>><around*|(|\<b-X\>,Z|)>>|<cell|=>|<cell|\<b-varepsilon\><around*|(|\<b-u\><rprime|\<star\>><around*|(|\<b-X\>|)>|)>-\<b-varepsilon\><rsub|0><around*|(|\<b-X\>|)>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|e><rprime|\<star\>><around*|(|\<b-X\>|)>>>|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|k<rsub|1>><rprime|\<star\>><around*|(|\<b-X\>|)>>>|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|k<rsub|2>><rprime|\<star\>><around*|(|\<b-X\>|)>>>|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|\<tau\>><rprime|\<star\>><around*|(|\<b-X\>|)>>>>>>\<cdot\><matrix|<tformat|<table|<row|<cell|e>>|<row|<cell|k<rsub|1>>>|<row|<cell|k<rsub|2>>>|<row|<cell|\<tau\>>>>>>>>>>><label|eq:elast-decompose-optimal-strain>
  </equation>

  where <math|<wide|\<b-varepsilon\>|~><rsub|i><around*|(|\<b-X\>|)>> is the
  cross-sectional distribution of strain arising from the 1D strain
  <math|i\<in\><around*|{|e,k<rsub|1>,k<rsub|2>,\<tau\>|}>>.

  The equivalent beam model is then defined by the strain energy

  <\equation>
    \<Phi\><rsub|<text|beam>>=<big|int><rsub|-\<infty\>><rsup|+\<infty\>><frac|1|2>*<matrix|<tformat|<table|<row|<cell|e<around*|(|Z|)>>>|<row|<cell|k<rsub|1><around*|(|Z|)>>>|<row|<cell|k<rsub|2><around*|(|Z|)>>>|<row|<cell|\<tau\><around*|(|Z|)>>>>>>\<cdot\>\<b-K\>\<cdot\><matrix|<tformat|<table|<row|<cell|e<around*|(|Z|)>>>|<row|<cell|k<rsub|1><around*|(|Z|)>>>|<row|<cell|k<rsub|2><around*|(|Z|)>>>|<row|<cell|\<tau\><around*|(|Z|)>>>>>>*\<mathd\>Z<label|eq:1D-energy>
  </equation>

  where the entries in the <math|4\<times\>4> matrix of 1D moduli
  <math|\<b-K\>> is given by

  <\equation>
    K<rsub|i\<nocomma\>j>=<big|int><rsub|\<Omega\>><wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~><rsub|i><rprime|\<star\>><around*|(|\<b-X\>|)>|)><value|t:><wide|\<b-varepsilon\>|~><rsub|j><rprime|\<star\>><around*|(|\<b-X\>|)>*\<mathd\><rsup|2>\<b-X\>.<label|eq:elast-1D-moduli>
  </equation>

  The 1D constitutive law yield the normal stress <math|N>, the bending
  moments <math|M<rsub|1>> and <math|M<rsub|2>> and the twisting moment
  <math|M<rsub|3>> as

  <\equation>
    <matrix|<tformat|<table|<row|<cell|N>>|<row|<cell|M<rsub|1>>>|<row|<cell|M<rsub|2>>>|<row|<cell|M<rsub|3>>>>>>=\<b-K\>\<cdot\><matrix|<tformat|<table|<row|<cell|e>>|<row|<cell|k<rsub|1>>>|<row|<cell|k<rsub|2>>>|<row|<cell|\<tau\>>>>>>.<label|eq:elastic-constitutive-laws>
  </equation>

  <subsection|Analytical solution for a Hookean material having uniform
  properties>

  For a linear, isotropic elastic material, the strain energy density
  <math|<wide|W|~><around*|(|<wide|\<b-varepsilon\>|~>|)>> can be expressed
  in terms of the material constants <math|K> (bulk modulus) and
  <math|\<mu\>> (shear modulus) as

  <\equation>
    <wide|W|~><around*|(|<wide|\<b-varepsilon\>|~>|)>=<frac|K|2>*tr<rsup|2>
    <wide|\<b-varepsilon\>|~>+\<mu\>*<around*|\<\|\|\>|<wide|\<b-varepsilon\>|~><rsup|D>|\<\|\|\>><rsup|2>,
  </equation>

  where <math|\<b-t\><rsup|D>> denotes the deviatoric part of a symmetric
  rank-2 tensor,

  <\equation>
    \<b-t\><rsup|D>\<assign\>\<b-t\>-<frac|1|3>*\<b-I\><rsub|3>*tr \<b-t\>,
  </equation>

  <math|\<b-I\><rsub|n>> denotes the identity matrix in
  dimension<nbsp><math|n>, <math|<around*|\<\|\|\>|\<b-t\>|\<\|\|\>>> denotes
  the Euclidean norm of a tensor,

  <\equation>
    <around*|\<\|\|\>|\<b-t\>|\<\|\|\>><rsup|2>\<assign\>\<b-t\><value|t:>\<b-t\>.
  </equation>

  In the Hookean case, the stress is given
  by<nbsp>(<reference|eq:3D-stress-general-CL>) as

  <\equation>
    <wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~>|)>=K*tr
    <wide|\<b-varepsilon\>|~>*\<b-I\><rsub|3>+2*\<mu\>*<wide|\<b-varepsilon\>|~><rsup|D>.
  </equation>

  \;

  In view of Equations<nbsp>(<reference|eq:eps-tilde-reduction>\U<reference|eq:W-tilde-to-W>),
  the energy density takes the form

  <\equation>
    <tabular|<tformat|<table|<row|<cell|W<around*|(|\<b-varepsilon\><around*|(|\<b-u\>|)>,e,\<b-k\>,\<tau\>|)>>|<cell|\<assign\>>|<cell|<frac|K|2>*tr<rsup|2>
    <around*|(|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<b-varepsilon\><rsub|0>|)>+\<mu\>*<around*|\<\|\|\>|<around*|(|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<b-varepsilon\><rsub|0>|)><rsup|D>+\<nabla\>u<rsup|\<perp\>>\<odot\>\<b-e\><rsub|3>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|K|2>*tr<rsup|2>
    <around*|<left|(|1>|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<varepsilon\><rsup|0><rsub|3\<nocomma\>3>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>|<right|)|1>>+\<mu\>*<around*|\<\|\|\>|<tabular|<tformat|<table|<row|<cell|<around*|(|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<varepsilon\><rsup|0><rsub|3\<nocomma\>3>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>|)><rsup|D>>>|<row|<cell|<space|1em>+<around*|(|\<nabla\>u<rsup|\<perp\>>+\<tau\>*\<b-e\><rsub|3>\<times\>\<b-X\>|)>\<odot\>\<b-e\><rsub|3>>>>>>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|K|2>*tr<rsup|2>
    <around*|<left|(|1>|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<varepsilon\><rsup|0><rsub|3\<nocomma\>3>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>|<right|)|1>>+\<mu\>*<around*|\<\|\|\>|<around*|(|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<varepsilon\><rsup|0><rsub|3\<nocomma\>3>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>|)><rsup|D>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+\<mu\>*<around*|\<\|\|\>|<around*|(|\<nabla\>u<rsup|\<perp\>>+\<tau\>*\<b-e\><rsub|3>\<times\>\<b-X\>|)>\<odot\>\<b-e\><rsub|3>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|K|2>*tr<rsup|2>
    <around*|<left|(|1>|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<varepsilon\><rsup|0><rsub|3\<nocomma\>3>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>|<right|)|1>>+\<mu\>*<around*|\<\|\|\>|<around*|(|\<b-varepsilon\><rsup|\<parallel\>><around*|(|\<b-u\><rsup|\<parallel\>>|)>-\<varepsilon\><rsup|0><rsub|3\<nocomma\>3>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>|)><rsup|D>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|>|<cell|<space|2em>+<frac|\<mu\>|2>*<around*|\<\|\|\>|\<nabla\>u<rsup|\<perp\>>+\<tau\>*\<b-e\><rsub|3>\<times\>\<b-X\>|\<\|\|\>><rsup|2>,>>>>><label|eq:W-2D-elastic>
  </equation>

  where the norm appearing on the last line is the norm of a <em|vector.>

  The first two terms concerns to the combined effect of stretching and
  bending, while the last term concerns twisting.

  We first deal with the bending and stretching problems, which are coupled.
  Minimizing the first two terms in<nbsp>(<reference|eq:W-2D-elastic>) with
  respect to the apparent 2D strain <math|\<b-varepsilon\><around*|(|\<b-X\>|)>>
  yields the classical solution of Hookean elasticity in simple traction,

  <\equation>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|\<b-varepsilon\><rsup|\<parallel\>><rsub|<text|bd+st>><around*|(|\<b-X\>|)>>|<cell|=>|<cell|\<nu\>*\<varepsilon\><rsup|0><rsub|3\<nocomma\>3><around*|(|\<b-X\>|)>*\<b-I\><rsub|2>>>>>>
  </equation>

  that gives rise to a 3D strain and stress,

  <\equation*>
    <tabular|<tformat|<cwith|1|2|1|1|cell-halign|r>|<table|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|<text|bd+st>><around*|(|\<b-X\>|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|\<nu\>*\<b-I\><rsub|2>>|<cell|>>|<row|<cell|>|<cell|-1>>>>>*\<varepsilon\><rsup|0><rsub|3\<nocomma\>3><around*|(|\<b-X\>|)>>>|<row|<cell|<wide|\<b-sigma\>|~><rsub|<text|bd+st>><around*|(|\<b-X\>|)>>|<cell|=>|<cell|-Y*\<varepsilon\><rsup|0><rsub|3\<nocomma\>3><around*|(|\<b-X\>|)>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>.>>>>>
  </equation*>

  Here, <math|\<nu\>> is Poisson's coefficient and <math|Y> is the Young
  modulus,

  <\equation>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|\<nu\>>|<cell|=>|<cell|<frac|3*K-2*\<mu\>|2*<around|(|3*K+\<mu\>|)>>>>|<row|<cell|Y>|<cell|=>|<cell|<frac|9*K*\<mu\>|3*K+\<mu\>>.>>>>>
  </equation>

  We have minimized the energy at every point over the cross-sectional strain
  <math|\<b-varepsilon\>>: to confirm that this approach is valid, we need to
  check that the 3D strain <math|<wide|\<b-varepsilon\>|~>> found in this way
  is geometrically compatible. This verification is left to the reader.

  The solution of the twisting problem is found by minimizing the last term
  in<nbsp>(<reference|eq:W-2D-elastic>). The solution takes the form

  <\equation>
    u<rsup|\<perp\>><around*|(|\<b-X\>|)>=\<tau\>*\<psi\><around*|(|\<b-X\>|)>,
  </equation>

  where <math|\<psi\><around*|(|\<b-X\>|)>> is the warping function. It is
  the solution of the minimization problem

  <\equation>
    min<rsub|\<psi\>> <frac|1|2>*<big|int><rsub|\<Omega\>><around*|\<\|\|\>|\<nabla\>\<psi\>+\<b-e\><rsub|3>\<times\>\<b-X\>|\<\|\|\>><rsup|2>*\<mathd\><rsup|2>\<b-X\>.
  </equation>

  The warping function <math|\<psi\><around*|(|\<b-X\>|)>> is defined up to a
  constant representing a longitudinal rigid-body translation.The
  minimization problem for <math|\<psi\>> leads to the elliptic
  boundary-value problem in the cross-section

  <\equation>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|\<Delta\>\<psi\>>|<cell|=>|<cell|0>|<cell|<text|<space|1em>in
    <math|\<Omega\>>>>>|<row|<cell|\<nabla\>\<psi\>\<cdot\>\<b-n\><rsub|j>+<around*|(|\<b-X\>\<times\>\<b-n\><rsub|j>|)>\<cdot\>\<b-e\><rsub|3>>|<cell|=>|<cell|0>|<cell|<text|<space|1em>on
    <math|\<partial\>\<Omega\><rsub|j>>>.>>>>>
  </equation>

  \;

  In the particular case of an elliptical cross-section,

  <\equation>
    \<Omega\>=\<Omega\><rsub|<text|ell>>\<assign\><around*|{|<around*|(|X<rsub|1>,X<rsub|2>|)>\<in\>\<bbb-R\><rsup|2><text|<space|1em>such
    that <math|<around*|(|<frac|X<rsub|1>|a>|)><rsup|2>+<around*|(|<frac|X<rsub|2>|b>|)><rsup|2>\<leqslant\>1>>|}>,<label|eq:elliptical-x-section>
  </equation>

  where <math|a> and <math|b> are the half-length of the principal axes, the
  solution is given by

  <\equation>
    \<psi\><rsub|<text|ell>><around*|(|\<b-X\>|)>=-<frac|a<rsup|2>-b<rsup|2>|a<rsup|2>+b<rsup|2>>*X<rsub|1>*X<rsub|2>.
  </equation>

  \;

  Returning to the general case and collecting the above results, we obtain
  the four contributions to the relaxed strain and stress listed
  in<nbsp>(<reference|eq:elast-decompose-optimal-strain>) in the form

  <\equation>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|4|5|5|cell-halign|r>|<table|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|e><rprime|\<star\>>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|-\<nu\>*\<b-I\><rsub|2>>|<cell|>>|<row|<cell|>|<cell|1>>>>>>|<cell|<around*|\<nobracket\>||\<nobracket\>><separating-space|2em>>|<cell|<wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~><rsub|e><rprime|\<star\>>|)>>|<cell|=>|<cell|Y*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>>>|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|k<rsub|1>><rprime|\<star\>>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|-\<nu\>*\<b-I\><rsub|2>>|<cell|>>|<row|<cell|>|<cell|1>>>>>*X<rsub|2>>|<cell|>|<cell|<wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~><rsub|k<rsub|1>><rprime|\<star\>>|)>>|<cell|=>|<cell|Y*X<rsub|2>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>>>|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|k<rsub|2>><rprime|\<star\>>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|-\<nu\>*\<b-I\><rsub|2>>|<cell|>>|<row|<cell|>|<cell|1>>>>>*<around*|(|-X<rsub|1>|)>>|<cell|>|<cell|<wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~><rsub|k<rsub|2>><rprime|\<star\>>|)>>|<cell|=>|<cell|-Y*X<rsub|1>*\<b-e\><rsub|3>\<otimes\>\<b-e\><rsub|3>>>|<row|<cell|<wide|\<b-varepsilon\>|~><rsub|\<tau\>><rprime|\<star\>>>|<cell|=>|<cell|<around*|(|\<nabla\>\<psi\><around*|(|\<b-X\>|)>+\<b-e\><rsub|3>\<times\>\<b-X\>|)>\<odot\>\<b-e\><rsub|3>>|<cell|>|<cell|<wide|\<b-sigma\>|~><around*|(|<wide|\<b-varepsilon\>|~><rsub|\<tau\>><rprime|\<star\>>|)>>|<cell|=>|<cell|2*\<mu\>*<around*|(|\<nabla\>\<psi\><around*|(|\<b-X\>|)>+\<b-e\><rsub|3>\<times\>\<b-X\>|)>\<odot\>\<b-e\><rsub|3>.>>>>>
  </equation>

  The explicit expression of the microscopic stress is

  <\equation>
    <wide|\<b-sigma\>|~>=Y*<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<mu\>*\<tau\>*<around*|(|\<psi\><rsub|,1>-X<rsub|2>|)>>>|<row|<cell|0>|<cell|0>|<cell|\<mu\>*\<tau\>*<around*|(|\<psi\><rsub|,2>+X<rsub|1>|)>>>|<row|<cell|\<mu\>*\<tau\>*<around*|(|\<psi\><rsub|,1>-X<rsub|2>|)>>|<cell|\<mu\>*\<tau\>*<around*|(|\<psi\><rsub|,2>+X<rsub|1>|)>>|<cell|e+k<rsub|1>*X<rsub|2>-k<rsub|2>*X<rsub|1>>>>>>.
  </equation>

  \;

  The <math|4\<times\>4> matrix of 1D elastic moduli appearing
  in<nbsp>(<reference|eq:1D-energy>) can the be written
  using<nbsp>(<reference|eq:elast-1D-moduli>) as

  <\equation>
    \<b-K\>=<matrix|<tformat|<table|<row|<cell|Y*<matrix|<tformat|<table|<row|<cell|<smash|<wide|<big|int><rsub|\<Omega\>>1<rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>|\<wide-overbrace\>><rsup|A>>>|<cell|<big|int><rsub|\<Omega\>>1\<cdot\>X<rsub|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>|<cell|<big|int><rsub|\<Omega\>>1\<cdot\><around*|(|-X<rsub|1>|)>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>>|<row|<cell|<text|sym.>>|<cell|<big|int><rsub|\<Omega\>><around*|(|X<rsub|2>|)><rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>|<cell|<big|int><rsub|\<Omega\>><around*|(|X<rsub|2>|)>*<around*|(|-X<rsub|1>|)>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>>|<row|<cell|<text|sym.>>|<cell|<text|sym.>>|<cell|<big|int><rsub|\<Omega\>><around*|(|-X<rsub|1>|)><rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>>>>>>|<cell|\<b-0\>>>|<row|<cell|\<b-0\>>|<cell|\<mu\>*J>>>>>,
  </equation>

  where <math|A> is the cross-sectional area and <math|J> the torsional
  constant,

  <\equation>
    <tabular|<tformat|<table|<row|<cell|A>|<cell|=>|<cell|<big|int><rsub|\<Omega\>>1*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>>|<row|<cell|J>|<cell|=>|<cell|<big|int><rsub|\<Omega\>><around*|\<\|\|\>|\<nabla\>\<psi\><around*|(|\<b-X\>|)>+\<b-e\><rsub|3>\<times\>\<b-X\>|\<\|\|\>><rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>>>>>.
  </equation>

  \;

  If the origin of coordinates is taken at the center of mass of the
  cross-section, the stretching and bending decouple and we have

  <\equation*>
    \<b-K\>=<matrix|<tformat|<table|<row|<cell|Y*A>|<cell|\<b-0\>>|<cell|0>>|<row|<cell|\<b-0\>>|<cell|Y*\<b-I\>>|<cell|\<b-0\>>>|<row|<cell|0>|<cell|\<b-0\>>|<cell|\<mu\>*J>>>>>,
  </equation*>

  where <math|\<b-I\>> is the matrix of geometrical moments,

  <\equation>
    \<b-I\>=Y*<matrix|<tformat|<table|<row|<cell|<big|int><rsub|\<Omega\>><around*|(|X<rsub|2>|)><rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>|<cell|<big|int><rsub|\<Omega\>><around*|(|X<rsub|2>|)>*<around*|(|-X<rsub|1>|)>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>>|<row|<cell|<text|sym.>>|<cell|<big|int><rsub|\<Omega\>><around*|(|-X<rsub|1>|)><rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>>>>>>.
  </equation>

  If in addition the coordinates coincide with the principal bending axes,
  the matrix of geometrical moments becomes diagonal,

  <\equation*>
    \<b-I\>=Y*<matrix|<tformat|<table|<row|<cell|<smash|<wide|<big|int><rsub|\<Omega\>><around*|(|X<rsub|2>|)><rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>|\<wide-overbrace\>><rsup|I<rsub|1>>>>|<cell|0>>|<row|<cell|0>|<cell|<smash|<wide*|<big|int><rsub|\<Omega\>><around*|(|-X<rsub|1>|)><rsup|2>*\<mathd\>X<rsub|1>*\<mathd\>X<rsub|2>|\<wide-underbrace\>><rsub|I<rsub|2>>>>>>>>,
  </equation*>

  and we recover the standard expressions of the 1D moduli,

  <\equation>
    \<b-K\>=<matrix|<tformat|<table|<row|<cell|Y*A>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|Y*I<rsub|1>>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|Y*I<rsub|2>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|\<mu\>*J>>>>>.
  </equation>

  The energy of the equivalent beam in<nbsp>(<reference|eq:1D-energy>) then
  takes the form

  <\equation>
    \<Phi\><rsub|<text|beam>>=<big|int><rsub|-\<infty\>><rsup|+\<infty\>><frac|1|2>*<around*|(|Y*A*e<rsup|2>+Y*I<rsub|1>*k<rsub|1><rsup|2>+Y*I<rsub|2>*k<rsub|2><rsup|2>+\<mu\>*J*\<tau\><rsup|2>|)>*\<mathd\>Z,<label|eq:elastic-1D-energy>
  </equation>

  and the constitutive laws in<nbsp>(<reference|eq:elastic-constitutive-laws>)
  are written as

  <\equation>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|3|3|cell-halign|l>|<table|<row|<cell|N>|<cell|=>|<cell|Y*A*e>>|<row|<cell|M<rsub|1>>|<cell|=>|<cell|Y*I<rsub|1>*k<rsub|1>>>|<row|<cell|M<rsub|2>>|<cell|=>|<cell|Y*I<rsub|2>*k<rsub|2>>>|<row|<cell|M<rsub|3>>|<cell|=>|<cell|\<mu\>*J*\<tau\>.>>>>>
  </equation>

  \;

  In the particular case of an elliptical cross-section, see
  Equation<nbsp>(<reference|eq:elliptical-x-section>), the 1D moduli are
  given by

  <\equation>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|A<rsub|<text|ell>>>|<cell|=>|<cell|\<mathpi\>*a*b>>|<row|<cell|B<rsub|1,<text|ell>>>|<cell|=>|<cell|<frac|\<mathpi\>|4>*a*b<rsup|3>>>|<row|<cell|B<rsub|2,<text|ell>>>|<cell|=>|<cell|<frac|\<mathpi\>|4>*a<rsup|3>*b>>|<row|<cell|J<rsub|<text|ell>>>|<cell|=>|<cell|\<mathpi\>*<frac|a<rsup|3>*b<rsup|3>|a<rsup|2>+b<rsup|2>>.>>>>>
  </equation>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|9>
    <associate|info-flag|detailed>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|4>>
    <associate|eq:1D-energy|<tuple|23|3>>
    <associate|eq:3D-principle-virtual-work|<tuple|5|1>>
    <associate|eq:3D-stress-general-CL|<tuple|6|1>>
    <associate|eq:W-2D-elastic|<tuple|30|4>>
    <associate|eq:W-tilde-to-W|<tuple|21|3>>
    <associate|eq:elast-1D-moduli|<tuple|24|3>>
    <associate|eq:elast-decompose-optimal-strain|<tuple|22|3>>
    <associate|eq:elastic-1D-energy|<tuple|44|6>>
    <associate|eq:elastic-Phi|<tuple|4|1>>
    <associate|eq:elastic-constitutive-laws|<tuple|25|4>>
    <associate|eq:elliptical-x-section|<tuple|36|5>>
    <associate|eq:eps-0|<tuple|19|3>>
    <associate|eq:eps-tilde-reduction|<tuple|15|2>>
    <associate|eq:invariant-displacement|<tuple|14|2>>
    <associate|eq:invariant-strain|<tuple|10|2>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Formulation of the 3D
      elasticity problem <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2<space|2spc>Axially invariant solutions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|3<space|2spc>Analytical solution for a
      Hookean material having uniform properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>