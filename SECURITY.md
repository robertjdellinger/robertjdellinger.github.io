# Security Policy

## Known Vulnerabilities

The following known vulnerabilities have been identified in indirect dependencies through [Dependabot](https://github.com/robertjdellinger/robertjdellinger.github.io/security/dependabot):

### 🛡️ Moderate to High Severity

| Package     | Issue                                   | Affected Versions     | Fixed In       |
|-------------|------------------------------------------|------------------------|----------------|
| **esbuild** | Server response leak via CORS headers   | ≤ 0.24.2               | >= 0.25.0      |
| **dompurify** | mXSS vulnerability via template literals | < 3.2.4                | >= 3.2.4       |
| **katex** | Escaping issues in `\includegraphics`     | < 0.16.21              | >= 0.16.21     |
| **vite** | XSS via `server.transformIndexHtml`        | Various                | >= 5.x         |
| **plotly.js** | Insecure randomness in legacy builds   | < 2.35.3               | 2.35.3         |
| **mermaid** | Double escaping & incomplete sanitization | < 10.9.3              | >= 10.9.3      |
| **mumath** | Deprecated and potentially unsafe usage  | 3.3.4 (still used transitively) | - |

> Note: Many vulnerabilities are inherited **transitively** (via Plotly, Mermaid, etc.). Fixes involve upgrading those libraries or overriding with secure versions in `package.json`.

