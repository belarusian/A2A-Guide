const path = require('node:path');

const stylesheet = path.join(__dirname, 'a2a-guide-html.css');
const root = path.resolve(__dirname, '..');

module.exports = {
  basedir: root,
  stylesheet: [stylesheet],
  page_media_type: 'print',
  body_class: ['a2a-guide-pdf'],
  document_title: 'A2A Protocol: A Developer\'s Guide',
  pdf_options: {
    format: 'Letter',
    printBackground: true,
    displayHeaderFooter: true,
    margin: {
      top: '21mm',
      right: '16mm',
      bottom: '14mm',
      left: '16mm',
    },
    headerTemplate: `
      <style>
        html, body {
          margin: 0;
          padding: 0;
          width: 100%;
          color: #1f2937;
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        }
        .guide-header {
          box-sizing: border-box;
          width: 100%;
          padding: 0 16mm 3mm;
          font-size: 9px;
        }
        .guide-header__row {
          display: flex;
          align-items: baseline;
          justify-content: space-between;
          gap: 12px;
          width: 100%;
          border-bottom: 1px solid #d8dce0;
          padding-bottom: 3mm;
        }
        .guide-header__title {
          font-size: 11px;
          font-weight: 700;
          letter-spacing: 0.01em;
          white-space: nowrap;
        }
        .guide-header__subtitle {
          text-align: right;
          line-height: 1.35;
          color: #6b7280;
        }
      </style>
      <section class="guide-header">
        <div class="guide-header__row">
          <div class="guide-header__title">A2A Protocol Guide</div>
          <div class="guide-header__subtitle">Agent-to-Agent Communication for AI Systems</div>
        </div>
      </section>
    `,
    footerTemplate: `
      <style>
        html, body {
          margin: 0;
          padding: 0;
          width: 100%;
          color: #6b7280;
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        }
        .guide-footer {
          box-sizing: border-box;
          width: 100%;
          padding: 2mm 16mm 0;
          font-size: 8px;
        }
        .guide-footer__row {
          display: flex;
          align-items: center;
          justify-content: space-between;
          width: 100%;
          border-top: 1px solid #e5e7eb;
          padding-top: 2mm;
        }
      </style>
      <section class="guide-footer">
        <div class="guide-footer__row">
          <div>https://a2a-protocol.org</div>
          <div>Page <span class="pageNumber"></span> of <span class="totalPages"></span></div>
        </div>
      </section>
    `,
  },
};
