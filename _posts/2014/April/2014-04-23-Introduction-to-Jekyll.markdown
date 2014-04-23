---
layout: post
title:  "Introduction to Jekyll"
description:  "Quick intro to setting up Jekyll and making posts on the OD developers blog"
author: "Sepehr Sabbagh-pour"
date:   2014-03-23 11:21:17
categories: Jekyll
thumbnail: "/assests/2014/April/23-Introduction-to-Jekyll/logo.png"
selectedTab: HowTo
---

<h2>1) Install and setup Jekyll!</h2>
<p>You need to download and install Jekyll so that you can view your changes locally before publishing:</p>

<h3>Ubuntu:</h3>
{% highlight bash %}
sudo apt-get install gem
sudo gem install jekyll
{% endhighlight %}

<hr/>

<h2>2) Download the git repo!</h2>
<p>Make sure you have git installed then download the mirosite using the following commands:</p>

{% highlight bash %}
mkdir training
cd training
git init
git remote add origin https://github.com/octocat/Spoon-Knife
{% endhighlight %}

<p>Once you have all the files run the following command to start a Jekyll server (you need to be inside of the root directory of the repo when you do this)</p>

{% highlight bash %}
jekyll serve --watch
{% endhighlight %}

<p>You should now be able to view a local copy of the site at <a href="http://localhost:4000/" target="_blank">http://localhost:4000/</a></p>
<hr/>

<h2>3) Navigate to the correct folder!</h2>
<p>Create your main blog file in a folder following this nameing convention:</p>

{% highlight bash %}
cd _posts/[Year]/[Month]/
touch YYYY-MM-DD-Name-of-post.markdown
{% endhighlight %}

<p>for example</p>

{% highlight bash %}
cd _posts/2014/April/
touch 2014-04-23-Introduction-to-Jekyll.markdown
{% endhighlight %}

<p>All of the required resources for your post must be placed incide of the following folder:</p>

{% highlight bash %}
cd assests/[Year]/[Month]/YYYY-MM-DD-Name-of-post/
{% endhighlight %}

<p>You may structure them however you like. For example if your post requires image hosting you could store it in</p>

{% highlight bash %}
cd assests/2014/April/14-04-23-Introduction-to-Jekyll/img
{% endhighlight %}

<hr/>

<h2>4) Creating a post!</h2>
<p>Open your favourit text editor and edit the markdown file you created in the pervious step</p>

<p>You first must define some basic variables at the start of the file paste the following lines editing them to match your post</p>

{% highlight html %}
---
layout: post
title:  "Introduction Jekyll - How to Post"
description:  "Quick intro to Jekyll"
author: "Sepehr Sabbagh-pour"
date:   2014-03-23 11:21:17
thumbnail: "/assests/2014/April/23-Introduction-to-Jekyll/logo.png"
categories: Jekyll Blogs CMS
head: " <link rel='stylesheet' href='/assests/2014/April/23-Introduction-to-Jekyll/path-to-your-css-file.css'>
	    <script src='/assests/2014/April/23-Introduction-to-Jekyll/path-to-your-js-file.js'></script>"
---
<h1>You can start your html content here</h1>
{% endhighlight %}

<p>Anything you place inside of the head variable would be placed into the head section of the page. You can include your js / css files here</p>

<p>The thumbnail and description is what's shown on the index page of the site.</p>

<p>Anything after the --- will be the content that makes up the post.</p>

<hr/>

<h2>4) Formating your post!</h2>

<h3>Bootstrap 3</h3>
<p>By default <strong>bootstrap 3</strong> is avalible on every page.</p>
<p>Bootstrap comes with a mobile first grid system and a number of premade componants that you may use.</p>
<p>You can find more information about bootstrap 3 by visting the bootstrap 3 website: <a href="http://getbootstrap.com/">http://getbootstrap.com/</a></p>

<h3>Syntax highlighing</h3>
<p><strong>Jekyll</strong> allows syntax highlighting for when you need to include code snippets. To use this feature just use the following syntax inside of your html</p> 

<pre>
{&#37; highlight php &#37;}
	code goes here
{&#37; endhighlight &#37;}
</pre>

<p>You can find out more about Jekyll's features by visiting: <a href="http://jekyllrb.com/docs/home/">http://jekyllrb.com/docs/home/</a></p>

<hr/>

<h2>5) Uploading your changes</h2>

<p>Once you are happy with your changes simpily run git status to view your changes then push them back to the master branch of the repo</p>


{% highlight bash %}
cd training
git status
git add .
git commit -m 'Post Name'
git push origin master
{% endhighlight %}

View the live page and make sure you can see your changes (please note it might take a few seconds for it to regenerate)