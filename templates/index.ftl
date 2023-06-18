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
                <li>Want to speak at the meetup? Send us a message either on Meetup.com, via DM on Twitter... or talk to us directly at an event.</li>
                <li>Want to host the BeJUG at your company? Read the partnership guidelines and get in touch!</li>
            </ul>
            <div class="mb-4">
                <a class="m-1" style="color: #55acee" href="https://twitter.com/BeJUG" role="button"><i class="fa-brands fa-twitter"></i></a>
<#--                <a class="m-1" style="color: #0077b5" href="TODO" role="button"><i class="fa-brands fa-linkedin"></i></a>-->
<#--		        <a class="m-1" style="color: #ff0000" href="https://youtube.com/@bejug" role="button"><i class="fa-brands fa-youtube"></i></a>-->
                <a class="m-1" style="color: #333" href="https://github.com/belgian-jug" role="button"><i class="fa-brands fa-github"></i></a>
            </div>
        </div>
    </@parent.layout>
</#macro>
