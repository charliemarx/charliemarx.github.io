---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

I am a fifth-year PhD student in Computer Science at Stanford University, where I'm advised by [Stefano Ermon](https://cs.stanford.edu/~ermon/) and affiliated with the [Stanford AI Lab](https://ai.stanford.edu/). 
My research is in machine learning and probabilistic modeling. My recent work focuses on uncertainty quantification, automated decision-making, and deep generative modeling.
Please feel free to reach out if you're interested in any of these areas!

I am deeply grateful to have worked with some brilliant and supportive people, including [Volodymyr Kuleshov](https://www.cs.cornell.edu/~kuleshov/), [Berk Ustun](https://www.berkustun.com/), and [Sorelle Friedler](http://sorelle.friedler.net/). 
During my first year at Stanford, I rotated with [Tatsu Hashimoto](https://thashim.github.io/) and [Emma Brunskill](https://cs.stanford.edu/people/ebrun/).
I am fortunate to be supported by an [NSF GRFP Fellowship](https://www.nsfgrfp.org/). 

## Selected Publications

{% assign selected_pubs = site.publications | where_exp: "pub", "pub.title == 'Calibrated Probabilistic Forecasts for Arbitrary Sequences' or pub.title == 'Calibration by Distribution Matching: Trainable Kernel Calibration Metrics' or pub.title == 'Predictive Multiplicity in Classification'" | sort: "date" | reverse %}
{% for post in selected_pubs %}
<div style="margin-bottom: 2em;">
  <h3 class="archive__item-title" itemprop="headline">
    <a href="/{{ post.paperurl }}">{{ post.title }}</a>
  </h3>
  <p>
    {{ post.content | markdownify }}
  </p>
  <p class="archive__item-excerpt" itemprop="description">
    {% if post.excerpt and post.excerpt != "" %}{{ post.excerpt | markdownify }} {% endif %}
    <nobr>{{ post.venue }}, {{ post.date | default: "1900-01-01" | date: "%Y" }}
    {% if post.paperurl %}
     | <a href="/{{ post.paperurl }}">pdf</a>
    {% endif %}
    {% if post.arxiv %}
    | <a href="{{ post.arxiv }}">arxiv</a>
    {% endif %}
    {% if post.codelink %}
    | <a href="{{ post.codelink }}">code</a>
    {% endif %}</nobr>
    {% if post.rednote %}
    <br><span style="color:red">{{ post.rednote }}</span>
    {% endif %}
    {% if post.whitenote %}
    <br><span>{{ post.whitenote }}</span>
    {% endif %}
  </p>
</div>
{% endfor %}

