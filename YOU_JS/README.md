# YOU.JS Workshop
 
Make your own JavaScript library and become a fully self-actualized human being.
 

This two-day workshop explores the programming library as an expressive medium. You will learn how to make frontend/backend JavaScript libraries and command line tools to build and distribute your own subjectivity. At the end of the workshop you will upload your library to Node Package Manager (NPM) for online exhibition, so that anyone can access you and your functions from the command line.

Participants should be familiar with basic Javascript syntax (variables, functions) and have Node installed on their computers.

## Topics

* Command line basics:
	* Getting around
	* Making and deleting folders and files
	* Running programs
	* Program arguments

* Node basics
	* Difference between front-end and back-end
 	* Functions
	 	* Parameters & return values
	 	* Functions are variables!
	* Objects
		* Objects are key/value pairs!
	* Modules
		* Modules are just like objects!
		* Writing your own
		* Installing from NPM
	* Package.json

	
## Fun node libraries
[Robotjs](https://github.com/octalmage/robotjs): automate mouse and keyboard movement

[Opn](https://github.com/sindresorhus/opn): open files and programs

[Clipboardy](https://github.com/sindresorhus/clipboardy): put/get things from the clipboard

[Jimp](https://github.com/oliver-moran/jimp): manipulate images

[Lwip](https://github.com/EyalAr/lwip): more image manipulation

[Requests](https://github.com/request/request): make http requests

[Cheerio](https://cheerio.js.org/): parse/scrape web pages

[Twit](https://github.com/ttezel/twit): twitter library

[Chart](https://github.com/jstrace/chart): charts in the terminal

[Blessed](https://github.com/chjj/blessed): make user interfaces in the terminal

[Rune.js](http://runemadsen.github.io/rune.js/index.html): create svgs

[Express.js](https://expressjs.com/): make websites

[Socket.io](https://socket.io/): make multi-user realtime websites

Many more at: [https://github.com/sindresorhus/awesome-nodejs](https://github.com/sindresorhus/awesome-nodejs)


## Writing a Node Module

Node lets us share code across multiple files using a simple module system. We use the ```module.exports``` keyword to designate functions, classes and other variables that we want to share.

In a file called `sam.js`

```javascript
function getName() {
	return "Sam's full name is Sam Lavigne";
}

function getAge() {
	return 103;
}

module.exports.getName = getName;
module.exports.getAge = getAge;
```

In another file called `main.js`

```javascript
// NOTE: the "./" before the module name tells node to look
// for that file in the same directory
var sam = require("./sam");

sam.getName();
```

There are a few ways to export functionality. Just imagine that `module.exports` is an empty object, and we can put anything we want to in it.

```javascript
function hi() {}
module.exports.hi = hi;

// same as:

module.exports.hi = function() {}
```

You can also export everything at once by exporting an object or a constructor function

```javascript
module.exports = {
	hi: function() {},
	bye: function() {}
}

```



## What is NPM?
NPM stands for the Node Package Manager. It's a command line tool that lets you install, update, remove, and publish node modules (also known as packages) from a central repository. You can see all available packages here: [https://www.npmjs.com/](https://www.npmjs.com/)

## Using NPM

Read the NPM guide for more info at: [https://docs.npmjs.com/getting-started/what-is-npm](https://docs.npmjs.com/getting-started/what-is-npm)

Install a library from NPM in your current folder:

```
npm install libraryname
```

NPM will install the library into folder called `node_modules`, creating the folder for you if one doesn't already exist:

Install a library from NPM globally:

```
npm install --global libraryname
```

Install a library from NPM and update package.json:

```
npm install --save libraryname
```

You can also install libraries from github repositories:

```
npm install github:<githubname>/<githubrepo>
```

For a full list of ```npm install``` options, just type ```npm help install``` on the command line.

## How ```npm install``` works:
NPM looks in your ```node_modules``` folder to see what you've already installed. Then it downloads the source code of the library you're installing, looks through that library's `package.json` file for dependencies and then downloads any dependencies you don't already have installed. If you don't have a `node_modules folder` it will create one for you.

CAUTION: if you have a node_modules folder in the parent directory of where you currently are, then npm will install stuff in that folder.

## The ```package.json``` file

Full documentation at: [https://docs.npmjs.com/files/package.json](https://docs.npmjs.com/files/package.json)

Getting started guide: [https://docs.npmjs.com/getting-started/using-a-package.json](https://docs.npmjs.com/getting-started/using-a-package.json)

The ```package.json``` file stores information about your project/personality in the json file format.

To create a ```package.json``` file from the command line, first navigate to the folder where your project/personality lives, and then type:

```
npm init
```

NPM will ask you a series of questions and then generate a file for/about you. 

You can also generate a default ```package.json``` by typing:

```
npm init --yes
```

Here's a default package.json:

```json
{
  "name": "my_package",
  "description": "",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/antiboredom/my_package.git"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/antiboredom/my_package/issues"
  },
  "homepage": "https://github.com/antiboredom/my_package"
}
```

## Versioning
NPM uses a versioning system called "semver", short for *semantic* (or meaningful) *versioning*. Versions have three numbers in them, separated by a dot. You should start projects at version ```1.0.0```.

Update the **last number** if you make **small bug fixes** or minor changes: ```1.0.1```

Update the **middle number** if you **add new features** that don't break existing project/persona functionality: ```1.2.0```

Update the **first number** if you make **major changes that radically alter your project/personality**: ```2.0.0```

**Note 1:** you will not be able to update your project/personality on NPM unless you update your version number.

**Note 2:** You can install specific versions of libraries with npm by specifying the version number either with the ```npm install``` command or in your ```package.json``` file. For example:

```
npm install whatever@1.5.9
```

## Publishing on NPM

Anyone can publish their own package on NPM. 

Create an account:

```
npm adduser
```

Or login if you already have an account:

```
npm login
```

Publish

```
npm publish
```

To update a package, first change it's version number:

```
npm version patch
# or
npm version minor
# or
npm version major
```

Then just run npm publish again

```
npm publish
```


## Documenting The Self

We will use jsdoc syntax and another library called documentation to automatically create home pages for our libraries.

* jsdoc: [http://usejsdoc.org/](http://usejsdoc.org/)
* documentationjs: [http://documentation.js.org/](http://documentation.js.org/)

### Syntax

The documentationjs library will look for special comment blocks above your functions, and then use those comments to generate html. Here's an example:

```javascript
/**
 * Says "hello" to Sam.
 * @param {string} name your name
 * @returns {string} your greeting to Sam
 * @example
 * hello("Bob");
 * //returns "Bob says hello."
 */
function hello(name) {
  return name + ' says hello.';
}
```

The very first line is a general description of the function. It's the only thing that's required to include, but you can also additional keywords like @param, @returns and @example.

The `@param` keyword indicates a parameter that your function expects. 

```
@param {VARIABLE_TYPE} PARAMETER_NAME PARAMETER DESCRIPTION
```

The following means: This function takes a **string** parameter called **name**

```
@param {string} name someone's name
```

The `@return` keyword indicates what your function will return.

```
@returns {VARIABLE_TYPE} RETURN DESCRIPTION
```

Lines following the `@example` keyword are example use cases for your function.

### Use

Install the documentation library

```
npm install -g documentation
```

Generate html documentation

```
documentation build --format html --output docs sam.js
```

Put documentation in your README file under a section called API. NOTE: you must already have a `README.md` file with a section heading `# API` for this to work.

```
documentation readme sam.js --section=API
```

### Setting up your project on GitHub

[https://github.com/blog/2233-publish-your-project-documentation-with-github-pages](https://github.com/blog/2233-publish-your-project-documentation-with-github-pages
)

1. Go to the github repo for your project
2. Click the settings tab
3. Scroll down the GitHub Pages section
4. Under "source" select master branch / docs folder
5. Hit save

Visit your site at: `https://GITHUB_USERNAME.github.io/PROJECT_NAME`
