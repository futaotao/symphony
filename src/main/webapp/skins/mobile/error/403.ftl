<#include "../macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="403 Forbidden! - ${symphonyLabel}">
        <meta name="robots" content="none" />
        </@head>
    </head>
    <body class="error error-403">
        <#include "../header.ftl">
        <div class="slogan">
            <div class="wrapper block">
                <h2>${reloginLabel}</h2>
                <div class="slogan-border fn-clear">
                    <div class="slogan-register">
                        <button onclick="Util.goRegister()" class="green">${nowLabel}${registerLabel}</button>
                    </div>
                    <div class="slogan-text">
                        ${indexIntroLabel} &nbsp; &nbsp;
                        
                        <a target="_blank" class="tooltipped tooltipped-n" aria-label="${joinQQGroupLabel}"
                           href="http://shang.qq.com/wpa/qunwpa?idkey=1ce5ad9a796a145e11fca7aa8c4a15e67a26205c6119dc95c11ca35b9bc7f489">
                            <svg><use xlink:href="#qq"></use></svg></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="wrapper">
                <div class="content">
                <#if timelines?size <= 0>
                <div id="emptyTimeline">${emptyTimelineLabel}</div>
                </#if>
                <div class="list single-line">
                    <ul id="ul">
                        <#list timelines as timeline>
                        <li>${timeline.content}</li>
                        </#list>
                    </ul>
                </div>
                </div>
                <div class="fn-hr10"></div>
                <div class="side">
                    <#include "../side.ftl">
                </div>
            </div>
        </div> 

        <#include '../footer.ftl'/>
        <script src="${staticServePath}/js/channel${miniPostfix}.js?${staticResourceVersion}"></script>
        <script>
                            // Init [Timeline] channel
                            TimelineChannel.init("${wsScheme}://${serverHost}:${serverPort}${contextPath}/timeline-channel", 20);
        </script>
    </body>
</html>
