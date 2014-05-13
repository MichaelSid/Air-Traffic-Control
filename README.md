Air-Traffic-Control
===================

This was a Week 3 test at Makers Academy that was assigned by @schadchnev.

We had to create software for an air traffic controller at an airport. Planes can land and take off from the airport provided that: 
*The weather conditions are good.
*The airport is not at full capacity (only for landing).

For this test we used:

1.Ruby
+ Git
+ Object-oriented-programming
+ Test-driven-development with RSpec

Essentially the aim of this test was to write clean and readable code using TDD and OOP. I created 3 separate classes with their own specific and limited responsibilities:

  Class   | Responsibility
  -------------  | -------------
  *Plane* | Can land or take off from an Airport, if clear to do so.
  Airport   | Has a maximum capacity, gets its weather from the Weather class, can allow planes to take off or land.
  Weather   | Can randomly switch state between sunny or stormy.
