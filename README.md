## Broad Overview

Long term goal tracking software, with facebook abilities, and a backbone.js front end that makes it feel smoother than others. Still very much alpha, and not yet released.

### Primary Concerns
- Easy input
- Social integration so that friends can share goals and encouragement
- Ability to use the goal data on other websites
- Completed goals should be kept as trophies, rather than just deleted

![mockup photo](https://raw.github.com/counterbeing/bucketlister/master/public/bucketlister_mockup.jpg)

## Why make this?

My life to do list is one of my most powerful tools to combat malaise, and envite what I want into my life. Somehow just having the clarity of knowing that I've thought about what I want makes me happier, and more productive. It could be on a napkin, but, I think this is slightly better.

For a long time I've kept my long term life to-do items in a program on my computer. This was great, but it was lacking in a couple of areas. The first key feature was to be able to share it with friends. The second was that the goals shouldn't simply disappear once accomplished, they should stick around.

There are other great apps out ther for [managing the day to day](http://lift.do) things, but I wanted something that was meant for the lifetime. 

There are other apps out there, but somehow, they weren't quite what I was looking for.

## API, There Is One
But there's no documentation on it yet. The front end is built on backbone, then backend on rails. The point of this is mostly that you can use whatever of your own data, wherever you want on the internet. At some point soon, all accounts will have API keys, allowing them to retrieve JSON.

This was one of the main reasons I felt we needed a new bucket list app. I don't want my life goals to be just listed on someone else's site. I want ot be able to embed them wherever. 

## Support
If you run into issues, I'd love to know about them. Feel free to shoot me an email at <a href="mailto:cory@counterbeing.com">cory@counterbeing.com</a> and I'll see what I can do, but if you feel like being super cool please create [an issue on github](https://github.com/counterbeing/bucketlister/issues).


## Github Info
You can find the repo at https://github.com/counterbeing/bucketlister

If you are on github, there is more info on the live site. 

## Change Log
#### Dec 27, 2013
Adding in basic functionality for facebook login, goal storage, and user interface. Getting ready for initial release. 


## Future Features

- Nested goals with progress indication
- Sortability of goals
- Facebook Comments
- Ability to have secret goals
- Timeline of accomplishments

## License

The MIT License (MIT)

Copyright (c) 2013 Cory Logan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
