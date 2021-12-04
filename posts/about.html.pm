#lang pollen/markup
◊define-meta[title]{About}

◊h1{About This Site}

◊p[#:class "blocktext"]{I have always been fascinated by the idea of having a place on the internet where I can write about my thoughts and interests.
When the end of my masters studies approached, I decided that now is the time to start my website.
For the domain name, I wanted a domain with only my surname (◊code{tittel}), but unfortunately the common TLDs (◊code{.com}, ◊code{.net} etc.) were already taken (which taught me that my surname is more common than I thought).
I also checked out some new gTLDs but ultimately decided against using one of these when I learned that less tech-savy people might not recognize a domain like ◊code{<something>.xyz} as a web address. 
Also, some e-mail providers and companies are apparently more likely to flag e-mails coming from addresses with certain gTLDs as spam (because some of the new gTLDs are used disproportionately often for sketchy purposes, e.g. due to their cheap price).}

◊p[#:class "blocktext"]{My main priorities for this website are:
◊ul{
    ◊li{◊b{Simplicity of technology}: The tech used for the site must be so simple that I am able to understand every single little detail about it (the CSS sheets, any JavaScript, the HTML, etc.)}
    ◊li{◊b{Customizability}: If I get new ideas for the site, I want to be able to implement them with as little difficulty as possible.}
    ◊li{◊b{Longevity}: I want the (build-)requirements for the website to be as basic and simple as possible so that the site will likely never require a major "rewrite" to a different technology stack.}
    ◊li{◊b{Simplicity of design}: The design must be simple, timeless and straightforward so users never get confused.}
}}

◊p[#:class "blocktext"]{Because I do not plan to add any especially dynamic content to the website, using a static site generation seems like a good way to help towards some requirements. With a good static site generator, simple websites are simple to develop, cheap to host and to likely have a long lifespan without the need to make major changes or updates if the stack is simple and stable enough. Additionally, static, pre-generated sites can usually be served very quickly if they are not too large, thus also providing a very responsive and smooth user experience for free.}

◊p[#:class "blocktext"]{I then compared the popular static site generators and ultimately decided to use ◊hyperlink["https://jekyllrb.com/"]{Jekyll}.
Starting a basic site with Jekyll is of course very simple - but I encountered many things I didn't like. 
For one, the final version of my Jekyll website used a very high number of different languages: CSS, HTML, JavaScript, SCSS, Ruby, Shell, AsciiDoc, YAML and Liquid (the templating language used by Jekyll). This huge number of languages adds to the complexity of the website. Having too many dependencies is a danger to the longevity. I am far from being an expert in most of these languages, limiting my ability to customize such a website. And Liquid, Jekyll's templating language, also has a rather peculiar syntax and is very limited overall.
I let my Jekyll site run for a while, but was never completely satisfied with it.}

◊p[#:class "blocktext"]{At some point I learned about ◊hyperlink["https://docs.racket-lang.org/pollen/"]{Pollen} (it was likely on ◊hyperlink["https://news.ycombinator.com/"]{Hackernews}), a programming language written in ◊hyperlink["https://racket-lang.org/"]{Racket}. Racket is a ◊hyperlink["https://en.wikipedia.org/wiki/Lisp_(programming_language)"]{Lisp} dialect meant for designing other programming languages. Pollen is a publishing system (like LaTeX, but more general because it is not meant to produce only one output format like PDF) and a templating language (like Liquid, but much more powerful because it has all the features Lisp dialects typically have).
A key idea behind Pollen is the realization that Lisp programs and files in XML-◊i{ish} languages have one big similarity: Both are trees. The ◊hyperlink["https://en.wikipedia.org/wiki/S-expression"]{S-expressions}, which are so typical for Lips dialects, can be mapped easily to XML-elements (and also LaTeX commands to some degree).
Using Pollen as a templating language is as simple as inserting Pollen expressions beginning with the lozenge symbol (◊code{◊(lz)}) into any text file (the format of the text doesn't matter, be it TXT, HTML, CSS or even files containing code in another programming language like C++ or Python, ...) or even into a binary file (e.g. PDF). Pollen will then "run" the file, evaluate all Pollen ◊(lz)expressions and create an output file where all Pollen ◊(lz)expressions are replaced with their corresponding output.
It is easy to see how Pollen is thus much more universal and powerful than other templating languages, especially when considering that you have full access to the Racket libraries and Racket's metaprogramming capabilities.
After learning enough about Pollen to be confident that it is a good solution I have begun rewriting my website in Pollen.
So far I am very pleased with Pollen.
You can find the source code of this website at GitHub: ◊hyperlink["https://github.com/ctittel/ctittel.github.io/"]{ctittel/ctittel.github.io}.
}
