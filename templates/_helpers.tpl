{{- define "sda.fullname" -}}
    {{- if .Values.fullnameOverride -}}
        {{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
        {{- .Release.Name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
{{- end -}}

{{- define "image.registry" -}}
    {{- ternary "" (printf "%s/" .Values.image.registry) (empty .Values.image.registry) -}}
{{- end -}}

{{- define "ingress.url" -}}
    {{- if .Values.ingress.tls }}
        {{- ternary "" (printf "https://%s" .Values.ingress.hostname) (empty .Values.ingress.hostname) -}}
    {{- else }}
        {{- ternary "" (printf "http://%s" .Values.ingress.hostname) (empty .Values.ingress.hostname) -}}
    {{- end }}
{{- end }}
