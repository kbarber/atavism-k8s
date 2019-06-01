{{/*
Hostname of the workstation
*/}}
{{- define "workstation.hostname" -}}
{{- .Values.type -}}
{{- end -}}

{{/*
FQDN
*/}}
{{- define "workstation.fqdn" -}}
{{- printf "%s.aqua.bob.sh" .Values.type -}}
{{- end -}}}}
