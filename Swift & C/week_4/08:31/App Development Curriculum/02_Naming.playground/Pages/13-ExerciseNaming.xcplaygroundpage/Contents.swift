/*:
 ## Exercise: Good names
 
 You’ve inherited some code from another programmer, who never had a chance to take the App Development With Swift course. All you found was a post-it note with the following written on it:
 
 > **Truck loading guide**
 >
 > Pallets of oranges weigh 100lbs
 >
 > Pallets of watermelons weigh 200lbs
 >
 > Have to load up the left then right of the truck and keep it as balanced, how many on each side? Melons always go together.
*/
let co = 14
let cw = 3
let ow = 100
let ww = 200
let to = co * ow
let tw = cw * ww
let ttl = to + tw
let es = ttl / 2
let lhso = es / ow
let rhso = co - lhso


//: - experiment: Rewrite the code so that it makes sense without needing a post-it note. Use meaningful names and comments.






/*:
 _Copyright (C) 2016 Apple Inc. All Rights Reserved.\
 See 00_LICENSE.txt for this sample’s licensing information_
 */
//:[Previous](@previous)  |  page 14 of 14
