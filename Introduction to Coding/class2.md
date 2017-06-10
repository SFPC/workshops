# Introduction to Coding @ SFPC

### [◄ Back: Class 1](https://github.com/SFPC/workshops/blob/master/Introduction%20to%20Coding/class1.md)

### [► Next: Class 3](https://github.com/SFPC/workshops/blob/master/Introduction%20to%20Coding/class3.md)

## Class 2: Interactive CSS and Introduction to Javascript

[Follow along with in-class exercises](https://github.com/SFPC/workshops/tree/master/Introduction%20to%20Coding/exercises/day2)

### Goal

* Introduce interactive CSS
* Introduce Javascript in 3 parts. "computers have/can:"
    * memory (save and get back)
    * do arithmetic + - * / (and compare, equal, less than)
    * normally read program top-down, can skip and revisit code (loop, if)

Let's summarize: CSS has a highly specific targeting system, called __selectors__, which can target elements (h1, p) or class or id names, or combinations of these. All manner of styling can follow once you target an element.

### [CSS Selectors on W3 Schools](https://www.w3schools.com/cssref/css_selectors.asp)

2 CSS topics to cover:

 - interactivity (mouse hover over a link)
 - CSS Animations

# a:hover

Make a simple HTML page with just our name, large font filling up the screen, and wrap it in an `a href`. Make use of all of the `a, a:hover, a:visited, a:active` style them each differently, watch as the mouse triggers all 4 of these. a:visited will take some explaining, people are usually familiar with the blue and purple links.

# animations

Add the following code to the `a` and `a:hover`:

```css
a{
  position: relative;
  top:0;
  transition: all 0.1s ease-out;
}
a:hover{ top: -10px; }
```

Now is a good time to bring up the coordinate space. `-10` means __up 10__ rather than __down 10__. The reason that the top left corner is 0,0 is that this is where the beam started before it ran across the screen in old phosphorescent screen technology.

### Homework Idea: Re-code Josef Albers

![image](https://raw.githubusercontent.com/SFPC/workshops/master/Introduction%20to%20Coding/images/albers.jpg)

Google image search "Josef Albers Interaction of Color", select an image that you feel has some life and animate it.

### Keyframe animations

CSS:

```css
@keyframes stomp{
  40%{ transform: translate(100%,0px); }
  48%{ transform: translate(100%,0px); }
  50%{ transform: initial; }
}
.animate-stomp{
  animation: stomp 5s infinite linear;
}
```

HTML:

```html
  <div class="orange animate-stomp"></div>
```

---

# Introduction to Javascript

### Goals

* Learn simple javascript storage, arithmetic, and control flow
* Introduce 3 types: numbers, strings, booleans
* Print your work to the console `console.log`
* Transfer your console printing to the DOM `document.body.innerHTML = ...`

### [MIPS Instruction Set](http://www.mrc.uidaho.edu/mrc/people/jff/digital/MIPSir.html)

In their early days, computers evolved 3 important abilities:

 - ability to store things into memory and pull them back out
 - ask if numbers are equal, not equal, larger than or less than each other
 - control flow: not simply read the program top-down but jump around: go back up (loop), skip bits of code (branching)

Javascript gets us access to these parts of a computer.

### var

what are all the things that we can put inside of a variable? Let's start small: numbers and strings.

```javascript
var number = 0;
var word = "my name";
```

talk about the `=` operator. I think of it more like an arrow `<-`. There is an action associated with it. Left to right. Store into.

### console.log();

introduce console.log becuase we want to be able to see what we are doing. Apologies, we won't talk about what is going on in detail, we will come back to the details of `console.log` in a bit.

```javascript
console.log(number);
console.log(word);

console.log(number + 5);
console.log(word + 5);
```

the addition operator `+` means 2 different things, depending on what __type__ of variable this is.

### +=

Don't introduce `+=` operator yet, but introduce the concept

```javascript
number = number + 5;
```

### If

Introduce if statements and the boolean operators:

 - `==`
 - `!=`
 - `<`, `>`
 - `<=`, `>=`

Everything gets evaluated down into one `true` or `false`. Walk the students through how the computer processes the line `if(number < 10)` by turning it into `if(true)`

Introduce `else` and `if else`

### Loop

Keep it simple! introduce a while loop first.

```
var number = 0;
while (number < 10){
  number = number + 1;
}
```

Students should be able to describe what will happen to this code. Console log `number` inside of the loop to watch it count up. console log it again at the end of the program outside of the loop to show that it is equal to 10 (which proves the `number < 10` statement false)

## Homework Idea

Use Javascript to create a HTML page that looks like this:

```html
<h1>0</h1>
<h1>1</h1>
<h1>2</h1>
<h1>3</h1>
...
<h1>99</h1>
```

riffs on the same idea

* same list as above but the numbers are listed backwards
* same as above but skip the number 13, skip numbers that end in "0"
