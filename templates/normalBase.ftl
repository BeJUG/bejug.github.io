<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
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
