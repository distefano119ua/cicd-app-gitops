{{- define "backend-cars.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "backend-cars.labels" -}}
app.kubernetes.io/name: {{ include "backend-cars.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "backend-cars.selectorLabels" -}}
app.kubernetes.io/name: {{ include "backend-cars.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
