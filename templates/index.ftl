<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout></@layout>

<#macro layout>
    <@parent.layout
    title="The Belgium Java User Group"
    description="Join the Belgium Java User Group"
    uri="">
        <div class="text-center">
            <div>
                <img src="${content.rootpath}logo.png" alt="Logo" width="30%">
            </div>
            <h1>The Belgian Java User Group</h1>
            <@macros.latestEvents/>
            <div class="mb-4">
                <a class="btn btn-primary" role="button" href="https://www.meetup.com/belgian-java-user-group/">Check our Meetup page</a>
            </div>
            <h2>How to</h2>
            <ul class="list-unstyled mb-4">
                <li>Want to speak at the meetup? Let us know in a <a href="https://github.com/BeJUG/bejug.github.io/issues" target="_blank">GitHub ticket</a> or talk to us directly at an event.</li>
                <li>Want to host the BeJUG at your company? Read the <a href="/partnership-guidelines.html">partnership guidelines</a> and get in touch!</li>
            </ul>
            <div class="mb-4">
                <a class="m-1" style="color: #208bfe" href="https://bsky.app/profile/bejug.bsky.social" target="_blank" role="button"><i class="fa-brands fa-bluesky"></i></a>
                <a class="m-1" style="color: #6364ff" href="https://foojay.social/@BeJUG" target="_blank" role="button"><i class="fa-brands fa-mastodon"></i></a>
                <a class="m-1" style="color: #0077b5" href="https://www.linkedin.com/groups/155664/" target="_blank" role="button"><i class="fa-brands fa-linkedin"></i></a>
                <a class="m-1" style="color: #333" href="https://github.com/bejug" target="_blank" role="button"><i class="fa-brands fa-github"></i></a>
                <a class="m-1" style="color: #D63B63" href="https://www.meetup.com/belgian-java-user-group/" role="button"><i class="fa-brands fa-meetup"></i></a>
            </div>
        </div>
    </@parent.layout>
</#macro>
