# Hugo Menu Template

This directory contains a reusable Hugo menu template implementation following Hugo best practices.

## Files

- `menu.html` - Main menu partial template with recursive "walk" function

## Usage

The menu template can be called from any Hugo template by passing the menu ID and current page context:

```go-html-template
{{ partial "menu.html" (dict "menuID" "main" "page" .) }}
{{ partial "menu.html" (dict "menuID" "footer" "page" .) }}
```

## Features

- **Recursive rendering** - Automatically handles nested menu structures
- **Localization support** - Uses translation tables via `T` function for menu identifiers
- **Accessibility** - Includes proper ARIA attributes (`aria-current`, `aria-label`)
- **Active state tracking** - Uses `IsMenuCurrent` and `HasMenuCurrent` to highlight active pages
- **Page context access** - Menu entries linked to pages can access page parameters

## Menu Configuration

Menus are defined in `config/_default/menus.yaml`. Example:

```yaml
main:
  - name: "About"
    url: "/about/"
    weight: 10
    identifier: "about"
    params:
      description: "About page"
```

## Customization

### Adding Page Parameters

To display page-specific data alongside menu items:

```go-html-template
{{- range site.Menus.main }}
  <a href="{{ .URL }}">
    {{ .Name }}
    {{- with .Page }}
      {{- with .Params.version -}}
        ({{ . }})
      {{- end }}
    {{- end }}
  </a>
{{- end }}
```

### Using Menu Entry Parameters

To use custom parameters defined in menu configuration:

```go-html-template
{{- range site.Menus.main }}
  <a {{ with .Params.class -}} class="{{ . }}" {{ end -}} href="{{ .URL }}">
    {{ .Name }}
  </a>
{{- end }}
```

## Reference

Based on Hugo's official menu template documentation:
https://gohugo.io/templates/menu/
