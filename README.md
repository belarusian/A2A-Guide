# A2A Protocol Resources

This directory contains documentation and resources for the A2A (Agent-to-Agent) Protocol.

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
