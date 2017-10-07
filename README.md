Comparison of real-time anti-aliasing methods on a head-mounted display
=======================================================================

This is my master's thesis which was done during 2016 at Futuremark (UL). The thesis was part
of my computer science master's studies at Aalto University.

About the topic
---------------
Importance of anti-aliasing has increased with the growing popularity of consumer VR devices.
"You have to use MSAA" was a sentence repeatedly mentioned in various "How to do VR" presentations.
But there was no mentioning why nor no comparisons against other anti-aliasing methods.
This inspired me to select this particular topic.

The aim of the thesis was to explore different anti-aliasing algorithms and comparing them *subjectively*
against each other --- which I believe is very underrated in the computer graphics research!

However, this thesis --- as done in very limited time with very limited resources --- does
not give definitive answer why MSAA appears superior and why or when we should definitely use anti-alising,
but it is a starting point.

Abstract
--------
Virtual reality and head-mounted devices have gained popularity in the past few years.
Their increased field-of-view combined with a display that is near to the eyes have increased
the importance of anti-aliasing i.e. softening of the visible jagged edges resulting from insufficient
rendering resolution.

In this thesis, elementary theory of real-time rendering, anti-aliasing and virtual reality is studied.
Based on the theory and review of recent studies, multisample anti-aliasing (MSAA),
fast-approximate anti-aliasing (FXAA) and temporal anti-aliasing (TAA) were implemented into
a real-time deferred rendering engine and the different techniques were studied in both subjective
image quality and objective performance measures. In the scope of this thesis, only each methods’
ability to prevent or lessen jagged edges and small flickering detailed geometries is examined.

Performance was measured on two different machines; the FXAA implementation was found to be the fastest
with 3% impact on performance and required the least memory, the TAA performance impact was 10-11% and
 22% to 62% for MSAA was depending on the sample count.

Each techniques’ ability to prevent or reduce aliasing was examined by measuring the visual quality and
fatigue reported by participants. Each anti-aliasing method was presented in a 3D scene using Oculus
Rift CV1.

The results indicate that the 4xMSAA and 2xMSAA had clearly the best visual quality and made
participants the least fatigued. FXAA appears visually not as good, but did not cause significant
fatigue. TAA appeared slightly blurry for the most of the participants, and this caused them to
experience more fatigue.

This study emphasizes the need for understanding the human visual system when developing
real-time graphics for virtual reality application.
