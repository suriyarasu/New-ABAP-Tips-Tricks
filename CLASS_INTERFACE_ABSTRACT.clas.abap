**What are the difference between Interface and Abstract classes

Interface
------------------------------------------------------------------
* 1 -> Interfaces offers only public components
* 2 -> Class can implement multiple interfaces
* 3 -> Interfaces are there to share definintion. so they don't impose any side expectations
*      or restriction upon the implementation.
* 4 -> Interface cannot provides any default code implementataion. an inherited class should have the implementation of
*      interface methods.
* 5 -> Interfaces doesn't have any optional methods, all the methods should be implemented in sub-classes class.

Abstract Class
------------------------------------------------------------------
* 1 -> Abstract class can provide public component's and protected component's as well.
* 2 -> Abstract class cannot be instantiated itself. it can only be instantiated by Sub-classes.
* 3 -> sub-classes must call the abstract class contractor even if the abstract class doesn't have a constractor.
* 4 -> The abstract class power over the sub-classes code, being able to add members and constructor code.
* 5 -> Abstract class can provide default code implementation so that sub-classes can use it or override it.
* 6 -> Every abstract classs should have one abstract method.
* 7 -> An Abstract class needs more code because you always have to provide implementation, even if it is completely empty.



**Instead of using abstract classes as alternative interfaces, you should use both in combination to decouple dependencies.

INTERFACE if_interface.
  METHODS. publish.
ENDINTERFACE.

CLASS cl_abstract DEFINITION PUBLIC ABSTRACT CREATE PROTECTED.
  PUBLIC SECTION.
      INTERFACES : if_interface.
      METHODS    : abstract_method.
ENDCLASS.

CLASS cl_abstract IMPLEMENTATION.
  METHOD if_interface~publish.
  ENDMETHOD.
ENDCLASS.

CLASS cl_subclass DEFINITION PUBLIC CREATE PUBLIC
                  INHERTING FROM cl_abstract.
    PUBLIC SECTION.
        METHODS : constractor.
        METHODS : publish REDEFINITION.
ENDCLASS.

CLASS cl_subclass IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  
  METHOD publish.
  ENDMETHOD.
ENDCLASS.
