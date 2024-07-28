#inclib "crt/string.h"
#inclib "crt/stdio.h"
#inclib "crt/stdlib.h"
#inclib "crt/array.h"

#include "crt/string.bi"
#include "crt/stdio.bi"
#include "crt/stdlib.bi"

#lang "fblite"

#if 0

type madure_alias "madure"
     names as string
     age as integer
     height as single
     weight as single
     hair_color as string
     eye_color as string
     gender as string
     occupation as string
     city as string
     country as string
     marital_status as string
     children as integer
     pets as integer
     siblings as integer
     spouse as string
     friends as array of string
     hobbies as array of string
     interests as array of string
     movies as array of string
     music as array of string
     books as array of string
     magazines as array of string
     apps as array of string
     school as string
     university as string
     college as string
     graduate_degree as string
     field_of_study as string
     employment_status as string
     job_title as string
     company_name as string
end type


   ' Define the madure_all function
   madure_all = function (byref madure as madure_alias, byref as
    byref logical as string, byref coffee as string, byref script as string) as string
     '... Function implementation...

     '... Return the result...
     return "madure_all function called"
     end function

   '... Call the madure_all function...
   madure_all(madure, true, "true", "true")
   '... Print the result...
   print madure_all
   end program.


declare function madure_all (byref logical as string, byref coffee as string, byref script as string) as string

type madure_ alias "madure"
     names as string
     age as integer
     height as single
     weight as single
     hair_color as string
     eye_color as string
     gender as string
     occupation as string
     city as string
     country as string
     marital_status as string
     children as integer
     pets as integer
     siblings as integer
     spouse as string
     friends as array of string
     hobbies as array of string
     interests as array of string
     movies as array of string
     music as array of string
     books as array of string
     magazines as array of string
     apps as array of string
     school as string
     university as string
     college as string
     graduate_degree as string
     field_of_study as string
     employment_status as string
     job_title as string
     company_name as string
end type 

   ' Define the madure_all function
   madure_all = function (byref madure as madure_alias, byref as
    byref logical as string, byref coffee as string, byref script as string) as string
     ' Initialize the madure structure with default values
     madure.names = "John Doe"
     madure.age = 30
     madure.height = 1.75
     madure.weight = 75
     madure.hair_color = "brown"
     madure.eye_color = "blue"
     madure.gender = "Male"
     madure.occupation = "Engineer"
     madure.city = "New York"
     madure.country = "USA"
     madure.marital_status = "Single"
     madure.children = 0
     madure.pets = 0
     madure.siblings = 0
     madure.spouse = ""
     madure.friends = array("Jane Doe", "Alice Johnson")
     madure.hobbies = array("Reading", "Cooking", "Gardening")
     madure.interests = array("Technology", "Sports", "Music")
     madure.movies = array("The Shawshank Redemption", "Inception")
     madure.music = array("The Beatles", "Queen")
     madure.books = array("To Kill a Mockingbird", "1984")
     madure.magazines = array("New York Times", "Herald")
     madure.apps = array("Slack", "Google Calendar")
     madure.school = "High School"
     madure.university = "University of New York"
     madure.college = "College of Arts and Sciences"
     madure.graduate_degree = "Bachelor of Science"
     madure.field_of_study = "Computer Science"
     madure.employment_status = "Employed"
     madure.job_title = "Software Engineer"
     madure.company_name = "Google"

     ' Display the madure structure
     logical = madure.names & " is " & madure.age & " years old,
     & madure.height & " meters tall, " & madure.weight & " ki
     & madure.hair_color & " hair, " & madure.eye_color &

     ' Add more details based on the input parameters
     if as = "coffee" then
      coffee = "They enjoyed a cup of " & madure.coffee & " coffee."
      script = "They also enjoyed listening to " & madure.music & "."
      else if as = "script" then
      script = "They wrote a script for " & madure.movies & "."
      else
      script = "They also enjoyed reading " & madure.books & "."
      end if

      return script & coffee
      end if
      end function

   ' Test the madure_all function
   logical = ""
   coffee = ""
   script = madure_all(madure, "script", "", "")
   print script
   print logical
   print coffee
end 
#else 
#define allowed_call1 0x000001
#define allowed_call2 0x000002
#define allowed_call3 0x000004
#define allowed_call4 0x000008
#define allowed_call5 0x000010
#define allowed_call6 0x000020
#define allowed_call7 0x000040
#define allowed_call8 0x000080
#define allowed_call9 0x000100
#define allowed_call10 0x000200
#define allowed_call11 0x000400
#define allowed_call12 0x000800
#define allowed_call13 0x001000
#define allowed_call14 0x002000
#define allowed_call15 0x004000
#define allowed_call16 0x008000
#define allowed_call17 0x010000
#define allowed_call18 0x020000
#define allowed_call19 0x040000
#define allowed_call20 0x080000
#define allowed_call21 0x100000
#define allowed_call22 0x200000
#define allowed_call23 0x400000
#define allowed_call24 0x800000
#endif