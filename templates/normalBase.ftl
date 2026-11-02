<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <style>
        /* AsciiDoc content styling */
        .sect1 > h2 {
            margin-top: 2.5rem;
            padding-bottom: .4rem;
            border-bottom: 2px solid var(--bs-primary);
        }
        .sect2 {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 1rem;
            margin-bottom: 1.5rem;
        }
        .sect2 > h3 {
            grid-column: 1 / -1;
            margin: 1.25rem 0 0;
            font-size: 1.25rem;
            color: var(--bs-secondary-color);
        }
        .sect2 > .ulist,
        .sect2 > .paragraph {
            grid-column: 1 / -1;
        }
        .sect3 {
            padding: 1rem;
            border: 1px solid var(--bs-border-color);
            border-radius: .5rem;
            box-shadow: 0 1px 3px rgba(0, 0, 0, .06);
        }
        .sect3 > h4 {
            font-size: 1.1rem;
            margin-bottom: .5rem;
        }
        .sect3 .paragraph:last-child p {
            margin-bottom: 0;
        }
        .sect2 > .ulist ul,
        .sectionbody > .ulist ul {
            padding-left: 1.25rem;
        }
        .sect2 > .ulist li,
        .sectionbody > .ulist li {
            margin-bottom: .35rem;
        }
        .sectionbody > .ulist {
            padding: .75rem 1rem;
            background: var(--bs-tertiary-bg);
            border-left: 4px solid var(--bs-primary);
            border-radius: .25rem;
        }
        .sectionbody > .ulist ul {
            margin-bottom: 0;
        }
        .admonitionblock.note {
            border-left: 4px solid var(--bs-info);
            border-radius: .25rem;
            background-color: var(--bs-info-bg-subtle);
            color: var(--bs-body-color);
        }
        .admonitionblock.note td {
            padding: 0 .75rem;
        }
        .admonitionblock.note .title {
            font-weight: 700;
        }
    </style>
    <div class="row">
        <div class="col-md-9">
            <#nested>
        </div>
        <div class="col-md-3">
            <@macros.latestEvents/>
        </div>
    </div>
</@parent.layout>
</#macro>
