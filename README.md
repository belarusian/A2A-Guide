# A2A Protocol Guide

[![License](https://img.shields.io/github/license/belarusian/A2A-Guide)](https://github.com/belarusian/A2A-Guide/blob/main/LICENSE)

Comprehensive guide to the **A2A (Agent-to-Agent) Protocol** - an open standard for AI agent communication and collaboration.

## What is A2A?

The A2A Protocol enables seamless communication and collaboration between AI agents built with different frameworks, by different vendors, and running on separate systems. Think of it as the "HTTP of AI agents."

### Quick Links

- **[What is A2A?](A2A_Guide.md#what-is-a2a)** - Introduction to the protocol
- **[A2A vs MCP](A2A_Guide.md#a2a-vs-mcp-understanding-the-relationship)** - How A2A relates to Model Context Protocol
- **[JSON Encoding Deep Dive](A2A_Guide.md#a2a-json-encoding-a-critical-deep-dive)** - Critical information about serialization safety

## Repository Contents

| File | Description |
|------|-------------|
| `A2A_Guide.md` | Comprehensive developer's guide (605 lines) |
| `A2A_Guide.mk` | Makefile for building PDFs |
| `dist/A2A_Guide.pdf` | Print-ready PDF |
| `dist/A2A_Guide.html` | Styled HTML |
| `dist/A2A_Guide.docx` | Microsoft Word document |

## Building PDFs

```bash
make -f A2A_Guide.mk      # Build all formats
make -f A2A_Guide.mk pdf  # PDF only
make -f A2A_Guide.mk html # HTML only
```

## License

Apache 2.0 - See [LICENSE](LICENSE) for details.

---

*This repository contains documentation for the A2A Protocol, an open standard maintained by The Linux Foundation. For the latest official specification and SDKs, visit [a2a-protocol.org](https://a2a-protocol.org).*
