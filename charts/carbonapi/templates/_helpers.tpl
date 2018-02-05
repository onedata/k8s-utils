{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "carbonapi.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "carbonapi.fullname" -}}
{{- if .Values.fullNameOverride -}}
{{- .Values.fullNameOverride -}}
{{- else -}}
{{- $name := default "carbonapi" .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified server name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "carbonapi.server.fullname" -}}
{{- if .Values.server.fullNameOverride -}}
{{- .Values.server.fullNameOverride -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name "carbonapi" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}