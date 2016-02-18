Game Theory Explorer (GTE) and Gambit
=====================================

Gambit is the premier software project for quantitative
analysis in game theory. The project has a 22-year history
of providing open-source tools for students, researchers,
and practitioners who use game theory in economics, computer
science, political science, and other fields. This academic
project is led by professors Theodore Turocy, Rahul Savani,
and Bernhard von Stengel.

The original 2011 design objective was to provide a browser front-end to
the Gambit software suite of game theory algorithms, which we called GTE for 
"Game Theory Explorer".
The browser interface makes it user-friendly and avoids installation hassle.
That decision was spot-on: As we saw at the 2014 GSoC Reunion,
half of the 2014 GSoC projects worked on similar browser front ends as
part of their projects.

Main problem: our GUI is implemented in Flash which is now discontinued.
In addition, the Flash development environment is hard to get installed, has
version issues, and provided an increasing barrier to entry for
prospective contributors.
On the other hand, the GUI itself is much easier to understand than the
back-end mathematical algorithms.
The GUI projects have been the most successful GSoC student projects (in
addition to those that implemented a lot of new Gambit functionality in
Python).

In 2015, we therefore started on a re-design of GTE in HTML5 and JavaScript.
The technical prerequisites are only a browser (with Firebug to debug the
JavaScript code) so a student can contribute almost immediately.

We are use the existing GTE Flash program, and its good design elements, as
a blueprint, but are rewriting the GUI code from scratch, *not as a port from
ActionScript to JavaScript*.

The project is under development at
https://github.com/gambitproject/jsgte

