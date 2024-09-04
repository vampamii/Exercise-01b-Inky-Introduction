/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave.{not torch_pickup:There is a torch on the floor.} The caves extends to east and west. 
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.

* {torch_pickup} [Light torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west.
[Go back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The ligth of your torch glints off of the thousands of coins in the room surrounding what it looks like an ancient throne with a rock skull on its top.
* [Sit down] -> sit_on_throne
-> END

== sit_on_throne ==
As soon as you sit down, a strange feeling goes up your spine all the way to your head. You start feeling dizzy. A voice from the distance is calling your name.
* [Ignore it] -> ignore_voice
* [Answer]-> answer_voice
-> END

== ignore_voice ==
Your head is killing you. The unsuffering pain starts to emrace you and you can't help but falling on the floor.
-> END

== answer_voice ==
"What do you want? How do you know my name?" You answer while your head spins around the room. The cave starts shaking furiously making the coins spread around the room. {not take_torch:You see your torch sitting on the floor.}
* [Stay where you are] -> dies_in_cave
* [Run back] -> cave_mouthh
* [Take torch] -> take_torch 

== dies_in_cave ==
The voice continues to get louder and the room shakes more intensly every second that passes. You accept your faith and close your eyes, to live your last moments in peace.
-> END

=== take_torch ===
You grab the torck from the floor and continue to the cave mouth. -> find_your_way_out

== cave_mouthh ==
You are back in the mouth of the cave. You remember how you entered, but you can't find your way out because its too dark. -> dies_in_cave 

== find_your_way_out ==
With the light on your hand you manage to find the exit and you escape the cave.
-> END





