
<#assign events = data.get('events.yml').data>


<#macro latestEvents>
    <div class="card mb-4">
        <div class="card-header">Upcoming events</div>
        <div class="card-body">
            <ul class="list-unstyled">
                <#list events?reverse as event>
                    <#if .now?date <= event.date?date>
                        <li class="mb-2">
                            <div class="title">
                                <#if event.eventUrl??>
                                    <a href="${event.eventUrl}">${event.eventName}</a>
                                <#else>
                                    ${event.eventName}
                                </#if>
                            </div>
                            <span>
                                ${event.location} - ${event.date?string("EEE d MMMM yyyy")}
                                <#if event.talks??>
                                    <ul class="list-unstyled">
                                        <#list event.talks as talk>
                                            <li class="ms-4">
                                                ${talk.title}
                                                <#if talk.presenters??>
                                                    <span class="small">by ${talk.presenters}</span>
                                                </#if>
                                            </li>
                                        </#list>
                                    </ul>
                                </#if>
                            </span>
                        </li>
                    </#if>
                </#list>
                <div class="small float-end">
                    <a href="https://github.com/BeJUG/bejug.github.io/blob/main/data/events.yml">Add event</a>
                    /
                    <a href="${content.rootpath}events-archive.html">Archive</a>
                </div>
            </ul>
        </div>
    </div>
</#macro>
