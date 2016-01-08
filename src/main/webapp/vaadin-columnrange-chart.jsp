<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-columnrange-chart.html">
<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>

    <div class="span3">
      <span class="polymer-tag">Built with Polymer</span>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-columnrange-chart&gt;
    <span>1.0</span>
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span8">
      <p class="lead helvetica-light">Column range chart is good for the following things for SEO
        reasons</p>
    </div>

    <div class="span4">
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-charts</code>
      </div>
      <a class="w-arrow-button blue small"
         href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html">Show
        documentation</a></div>
  </div>
</div>

<!-- Intro section start -->

<!-- Info section start -->
<div class="elements-section">
  <h4>Features</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>Vector Graphics</li>
        <li>Dynamic data</li>
        <li>Multiple axes</li>
        <li>Zooming</li>
        <li>Branding</li>
        <li>Touch support</li>
      </ul>
    </div>

  </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<div class="elements-section">

  <h4>Basic column range chart</h4>
  <view-source head="#stuff-for-head" title="Basic column range chart">
    <vaadin-columnrange-chart id="column-range">
      <chart inverted="true"></chart>
      <title>Temperature variation by month</title>
      <subtitle>Observed in Vik i Sogn, Norway</subtitle>
      <x-axis>
        <categories>Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec</categories>
      </x-axis>
      <y-axis>
        <title>Temperature ( °C )</title>
      </y-axis>
      <tooltip value-suffix="°C"></tooltip>
      <plot-options>
        <columnrange>
          <data-labels enabled="true" formatter="function () {return this.y + '°C';}"></data-labels>
        </columnrange>
      </plot-options>
      <legend enabled="false"></legend>
      <data-series name="Temperatures">
        <data>
          [-9.7, 9.4], [-8.7, 6.5], [-3.5, 9.4], [-1.4, 19.9], [0.0, 22.6], [2.9, 29.5], [9.2, 30.7], [7.3, 26.5], [4.4, 18.0], [-3.1, 11.4], [-5.2, 10.4], [-13.5, 9.8]
        </data>
      </data-series>
    </vaadin-columnrange-chart>
  </view-source>

  <h4>Resource usage chart</h4>
  <view-source head="#stuff-for-head" title="Resource usage">
    <vaadin-columnrange-chart id="column-range-resource-usage">
      <chart inverted="true"></chart>
      <title>Resource usage</title>
      <x-axis>
        <categories>Printer, Coffee machine</categories>
      </x-axis>
      <y-axis type="datetime">
        <title>Time</title>
      </y-axis>
      <tooltip formatter="function () {return this.series.name +': '+ Highcharts.dateFormat('%H:%M', this.point.low) + ' - ' + Highcharts.dateFormat('%H:%M', this.point.high)}"></tooltip>
      <plot-options>
        <columnrange grouping="false">
          <data-labels enabled="true" inside="true" color="white" formatter="function () {return this.y == this.point.low ? '' : this.series.name;}"></data-labels>

        </columnrange>
      </plot-options>
      <data-series name="Team Alpha">
        <color>rgba(255, 60, 125, 0.8)</color>
        <data>
          [Date.UTC(2013,05,07,12,00,00),Date.UTC(2013,05,07,15,00,00)], [Date.UTC(2013,05,07,13,00,00),Date.UTC(2013,05,07,17,00,00)]
        </data>
      </data-series>
      <data-series name="Team Beta">
        <color>rgba(60, 125, 255, 0.8)</color>
        <data>
          [Date.UTC(2013,05,07,16,00,00),Date.UTC(2013,05,07,17,00,00)], [Date.UTC(2013,05,07,12,00,00),Date.UTC(2013,05,07,14,00,00)]
        </data>
      </data-series>
    </vaadin-columnrange-chart>
  </view-source>
</div>