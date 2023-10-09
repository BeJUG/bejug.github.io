<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "base.ftl" as parent>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <#assign events = data.get('events.yml').data>
    <h1>${content.title}</h1>
    <ul class="list-unstyled">
        <#list events as event>
            <li class="mb-2">
                <div class="title">
                    <#if event.eventUrl??>
                        <#if event.participationOnly??>
                            <a data-toggle="tooltip" title="This event is not hosted by us, but we do promote the event." class="link-secondary" href="${event.eventUrl}">${event.eventName}</a>
                        <#else>
                            <a class="link-primary" href="${event.eventUrl}">${event.eventName}</a>
                        </#if>
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
        </#list>
    </ul>
</@parent.layout>
</#macro>
