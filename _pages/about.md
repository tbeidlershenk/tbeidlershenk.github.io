---
layout: about
title: About
permalink: /
subtitle: Welcome to my portfolio!

profile:
  align: right
  image: prof_pic.jpg
  image_circular: false # crops the image to make it circular
  more_info: 

news: false # includes a list of news items
selected_papers: false # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page
---

<!-- <style>
r { color: Red; font-weight: bold }
o { color: Orange }
g { color: Green }
</style> -->

I'm Tobias and I am an aspiring **entrepreneur & software developer** out of Pittsburgh, PA. I have a passion for developing unique solutions with software, and I am currently pursuing a career in **backend development**.

Currently, I am a senior at the **University of Pittsburgh**, majoring in **Computer Science** with a minor in **Mathematics**, with an anticipated graduation date of May 2025. I'm training for the Philadelphia and Pittsburgh marathons, and also enjoy disc golf, climbing, hiking in my free time. 

Reach out to me by email at **[tbeidlershenk@gmail.com](mailto:tbeidlershenk@gmail.com)**.

<!-- Social -->
{% if page.social %}
  <div class="social">
    <div class="contact-icons">{% include social.liquid %}</div>

    <div class="contact-note">{{ site.contact_note }}</div>
  </div>
{% endif %}