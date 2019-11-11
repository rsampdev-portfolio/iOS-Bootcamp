/*: 
 ## Exercise: What Fits on your iPhone?
 
 In this exercise you’re going to work on a calculation dear to all our hearts: how much stuff can I fit on my iPhone?
 
 Unlike the previous exercises, no code will be provided. You can do it!
 
 
 - iPhone storage capacity is measured in **gigabytes** (GB).
 - The iPhone in question has 8GB of storage.
 - A gigabyte is **1000 megabytes** (MB)
 - The phone already has **3GB** of stuff on it
 - **1 minute** of video takes **150MB** of space
 
 - experiment: How many minutes of video will it take to fill the phone?
 
 _Hint_: Do all of your calculations in megabytes.
*/
let megabyte = 1

let gigabyte = (megabyte * 1000)

let totalPhoneSpace = (gigabyte * 8)

let usedSpaceOnPhone = (gigabyte * 3)

let oneMinuteOfVideo = (megabyte * 150)

let totalMinutesOfVideoToFillPhoneSpace = (totalPhoneSpace - usedSpaceOnPhone) / oneMinuteOfVideo
//:[Previous](@previous)  |  page 12 of 14  |  [Next: Exercise: Fixing your morning](@next)
