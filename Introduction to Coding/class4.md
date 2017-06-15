# Introduction to Coding @ SFPC

### [◄ Back: Class 3](https://github.com/SFPC/workshops/blob/master/Introduction%20to%20Coding/class3.md)

## Class 4: Mouse drawing, more Javascript, Game loops

[Follow along with in-class exercises](https://github.com/SFPC/workshops/tree/master/Introduction%20to%20Coding/exercises/day4)

### Goal

* make a drawing program
* what is the dot operator?
* build a screensaver
* build a simple game

learn about scope

we have a color variable that is increasing each frame. it cannot be inside of the function, or it will go away after every event. it needs to be "global"

# Exercises

## Drawing with Mouse

simple mouse drawing in the browser

(remove <!DOCTYPE html>, need to look into this)

start with this:

```css
div{
	width:50px;
	height:50px;
	background-color: black;
}
```

```javascript
document.onmousemove = function(event){
	var element = document.createElement('div');
	document.body.appendChild(element);
}
```

console.log the event inside of the onmousemove function. expand the arrow, find the mouse values

* explain that there are a few different kinds, for when you scroll the page etc.. we want "clientX/Y"

### dot operator

we haven't talked about objects in class, to keep things simple, the dot operator is like saying "go inside of" this object. 

Think abstractly for a second:

* SFPC.Intro2code.students.Robby

when you expand an object in the chrome console, expand with the triangle, you are "going inside" of that object.

* event.clientX

clientX is inside of event.

make div `position: absolute;` and match position to mouse with:

```javascript
element.style.top = event.clientY;
element.style.left = event.clientX;
```

now you have a mouse drawing!

add `border-radius: 25px;` to make it even nicer

### scope

add this bit of code so that the color cycles through the rainbow.

```javascript
element.style.backgroundColor = "hsl(" + color + ", 100%, 50%)";
color = color + 1;
```

but it's important to declare `var color` **outside** of the function. at the top.

* talk about how things that are declared inside of functions get cleaned up and thrown away at the end of the function. even inside of loops.

### hue color

talk about how `hsl(90000, 100%, 50%)"` works just fine. 90000 is a large number, but after 360, it wraps around back to the beginning.

# Processing

## re-build the same code in Processing

we will learn that

* by learning 1 language, in a way, we learn many languages
* certain concepts transcend syntax
* certain things are easier/more difficult in different languages

### Drawing with Mouse, in Processing

```java
void setup(){
  size(500, 500);
}
void draw(){
  ellipse(mouseX, mouseY, 50, 50);
}
```

and with rainbow colors:

```java
int count = 0;

void setup(){
  size(500, 500);
  colorMode(HSB, 360);
}

void draw(){
  noStroke();
  fill(count, 360, 360);
  count = count + 1;
  if(count == 360) count = 0;
  ellipse(mouseX, mouseY, 50, 50);
}
```

Talk about the differences in the languages. draw is a loop, it is always running. what things are easier?

* what are all the lines of code that are THE EXACT SAME between languages?
* what concepts are the same? like the scope of "count"
* notice how `hsl(90000, 100%, 50%)"` works in CSS but Processing requires a hue value between 0 and 360.

## Screensaver

Remain in Processing for the duration of class. Make a program where a ball is bouncing around inside of the "walls" of the screen.

### result: [Bouncing Ball](https://rawgit.com/SFPC/workshops/master/Introduction%20to%20Coding/exercises/day4/B_ball/B_ball.pde)

concepts:

* position is now a variable
* velocity is being saved
* the draw loop simply adds whatever is in velocity to position, that way velocity can be changed without this line needing to know or care what velocity is.

Which leads nicely into pong

## 1 player Pong

### result: [Pong](https://rawgit.com/SFPC/workshops/master/Introduction%20to%20Coding/exercises/day4/C_pong/C_pong.pde)

* new idea: win/lose condition
* build a "paddle", hook it up to MouseX
* keep it simple: don't need to code new "walls" of the paddle to bounce off. simply set lose condition if paddle is not by ball when ball is at bottom of screen.
