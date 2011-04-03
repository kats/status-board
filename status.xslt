<?xml version="1.0" encoding="utf-8"?>
<x:transform version="1.0" xmlns:x="http://www.w3.org/1999/XSL/Transform">
<x:output method="html" />

<x:template match="project">

<li class="project">
    <h2>
        <span class="title"><span class="strikethrough"></span><strong><x:value-of select="@name"/></strong></span>
        <span class="target disabled"><span class="strikethrough"></span><strong>N/A</strong></span>
        <span class="status yellow"><span class="strikethrough"></span></strong><x:value-of select="@status"/></strong></span>
    </h2>
    <p class="info"><span class="label">Что:</span><x:value-of select="description" /></p>
    <p class="crew"><span class="label">Кто:</span>
        <x:apply-templates select="people/person" />
    </p>
    <p class="eta"><span class="label">Кагдила:</span><x:value-of select="status"/></p>
</li>
</x:template>

<x:template match="person">
    <span class="person"><x:value-of select="@name"/></span>
</x:template>

</x:transform>
