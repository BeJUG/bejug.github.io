<#-- Workaround for https://github.com/jbake-org/jbake/issues/693 -->
<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "base.ftl" as parent>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <#assign events = data.get('events.yml').data>
    <style>
        .archive-year {
            border-bottom: 2px solid var(--bs-primary);
            padding-bottom: .25rem;
            margin: 2rem 0 1rem;
        }
        .archive-event {
            display: flex;
            gap: 1rem;
            padding: .75rem 0;
            border-bottom: 1px solid var(--bs-border-color);
        }
        .archive-date {
            flex: 0 0 3.5rem;
            text-align: center;
            line-height: 1.1;
            background: var(--bs-light);
            border: 1px solid var(--bs-border-color);
            border-radius: .5rem;
            padding: .4rem 0;
            align-self: flex-start;
        }
        .archive-date .day {
            display: block;
            font-size: 1.4rem;
            font-weight: 700;
        }
        .archive-date .month {
            display: block;
            font-size: .75rem;
            text-transform: uppercase;
            color: var(--bs-secondary-color);
        }
        .archive-meta {
            color: var(--bs-secondary-color);
            font-size: .9rem;
        }
        .archive-talks {
            margin: .5rem 0 0;
            padding-left: 1rem;
            font-size: .9rem;
        }
    </style>
    <h1>${content.title}</h1>
    <#assign currentYear = "">
    <#list events as event>
        <#assign year = event.date?string("yyyy")>
        <#if year != currentYear>
            <h2 class="archive-year h4">${year}</h2>
            <#assign currentYear = year>
        </#if>
        <#-- Event date is midnight GMT; keep it upcoming during the whole day -->
        <#assign upcoming = (event.date?long + 86400000) gt .now?long>
        <div class="archive-event">
            <div class="archive-date">
                <span class="day">${event.date?string("d")}</span>
                <span class="month">${event.date?string("MMM")}</span>
            </div>
            <div>
                <div class="title fw-semibold">
                    <#if event.eventUrl??>
                        <#if event.participationOnly??>
                            <a data-toggle="tooltip" title="This event is not hosted by us, but we do promote the event." class="link-secondary" href="${event.eventUrl}" target="_blank" rel="noopener">${event.eventName}</a>
                        <#else>
                            <a class="link-primary" href="${event.eventUrl}" target="_blank" rel="noopener">${event.eventName}</a>
                        </#if>
                    <#else>
                        ${event.eventName}
                    </#if>
                    <#if upcoming><span class="badge text-bg-success ms-1">Upcoming</span></#if>
                    <#if event.participationOnly??><span class="badge text-bg-secondary ms-1">Partner event</span></#if>
                </div>
                <div class="archive-meta">
                    <i class="fa-solid fa-location-dot"></i> ${event.location} &middot; ${event.date?string("EEEE d MMMM yyyy")}
                </div>
                <#if event.talks??>
                    <ul class="archive-talks">
                        <#list event.talks as talk>
                            <li>
                                ${talk.title}
                                <#if talk.presenters??>
                                    <span class="small text-muted">by ${talk.presenters}</span>
                                </#if>
                            </li>
                        </#list>
                    </ul>
                </#if>
            </div>
        </div>
    </#list>
</@parent.layout>
</#macro>
