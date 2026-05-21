# A2A Protocol Guide

[![License](https://img.shields.io/github/license/belarusian/A2A-Guide)](https://github.com/belarusian/A2A-Guide/blob/main/LICENSE)
[![GitHub release](https://img.shields.io/github/v/release/belarusian/A2A-Guide)](https://github.com/belarusian/A2A-Guide/releases)

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

## Documentation

### [A2A_Guide.md](A2A_Guide.md)

A comprehensive developer's guide to the A2A Protocol, including:

- **What is A2A?** - Introduction to the protocol
- **Core Concepts** - Architecture, Agent Cards, Protocol Bindings
- **Multi-Agent Systems** - Building systems with multiple collaborating agents
- **Key Features** - Opacity, Security, Multi-Turn Support
- **Best Practices** - Design, Security, Performance, Monitoring
- **Getting Started** - Installation, Quick Start
- **A2A vs MCP** - Understanding the relationship between protocols
- **JSON Encoding Deep Dive** - Critical information about serialization safety

## Building PDFs

The A2A guide can be exported to multiple formats including PDF.

### Prerequisites

- **Pandoc**: `brew install pandoc`
- **Node.js**: https://nodejs.org (for PDF via md-to-pdf)

### Build Commands

```bash
# Build all formats (txt, html, docx, pdf)
make

# Individual formats
make html      # HTML export
make pdf       # PDF export (via Chromium)
make pdf-latex # PDF export (via LaTeX)
make clean     # Remove output directory
```

### Output Location

All exports are placed in the `dist/` directory:
- `A2A_Guide.txt` - Plain text (97-column wrapped)
- `A2A_Guide.html` - Styled HTML with embedded resources
- `A2A_Guide.docx` - Microsoft Word document
- `A2A_Guide.pdf` - Print-ready PDF

## Related Resources

- **A2A Protocol Documentation**: https://a2a-protocol.org
- **GitHub Repository**: https://github.com/a2aproject/A2A
- **Python SDK**: https://github.com/a2aproject/a2a-python
- **Samples**: https://github.com/a2aproject/a2a-samples
- **DeepLearning.AI Course**: https://goo.gle/dlai-a2a

## License

Apache 2.0 - See [LICENSE](LICENSE) for details.
