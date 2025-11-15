const Logger = require('./logger');

const FIELD_STATUS = Object.freeze({
  MATCH: 'match',
  MISMATCH: 'mismatch',
  MISSING_MRZ: 'missing_mrz',
  MISSING_NFC: 'missing_nfc',
  MISSING_BOTH: 'missing_both',
});

const OVERALL_STATUS = Object.freeze({
  MATCH: 'match',
  MISMATCH: 'mismatch',
  INCOMPLETE: 'incomplete',
});

const FIELD_CONFIG = [
  {
    field: 'tcNo',
    label: 'TC Kimlik No',
    mrzAccessor: (mrzData = {}) => mrzData.tcNo,
    nfcAccessor: (nfcData = {}) => nfcData.tcNo,
    normalizer: (value) => {
      if (!value) return null;
      const digits = String(value).replace(/[^0-9]/g, '');
      return digits.length > 0 ? digits : null;
    },
  },
  {
    field: 'fullName',
    label: 'Ad Soyad',
    mrzAccessor: (mrzData = {}) => {
      const surname = mrzData.surname;
      const name = mrzData.name;
      if (!surname && !name) return null;
      return [name, surname]
        .filter(Boolean)
        .join(' ')
        .trim();
    },
    nfcAccessor: (nfcData = {}) => {
      if (nfcData.fullName) return nfcData.fullName;
      if (nfcData.name || nfcData.surname) {
        return [nfcData.name, nfcData.surname]
          .filter(Boolean)
          .join(' ')
          .trim();
      }
      return null;
    },
    normalizer: (value) => {
      if (!value) return null;
      const cleaned = String(value)
        .replace(/[^A-ZÇĞİÖŞÜ\s]/gi, ' ')
        .replace(/\s+/g, ' ')
        .trim()
        .toUpperCase();
      if (!cleaned) return null;
      const tokens = cleaned.split(' ').filter(Boolean);
      // Sort tokens for order-insensitive comparison (e.g., "AYKUT ATABEY" vs "ATABEY AYKUT")
      const sortedTokens = [...tokens].sort();
      return {
        normalized: cleaned,
        tokenSignature: sortedTokens.join('|'),
      };
    },
    comparator: (mrzNormalized, nfcNormalized) => {
      if (!mrzNormalized && !nfcNormalized) return FIELD_STATUS.MISSING_BOTH;
      if (!mrzNormalized) return FIELD_STATUS.MISSING_MRZ;
      if (!nfcNormalized) return FIELD_STATUS.MISSING_NFC;

      if (mrzNormalized.tokenSignature === nfcNormalized.tokenSignature) {
        return FIELD_STATUS.MATCH;
      }

      return FIELD_STATUS.MISMATCH;
    },
  },
  {
    field: 'birthDate',
    label: 'Doğum Tarihi',
    mrzAccessor: (mrzData = {}) => mrzData.birthDate,
    nfcAccessor: (nfcData = {}) => nfcData.birthDate,
    normalizer: (value) => {
      if (!value) return null;
      const str = String(value).trim();
      const ddmmyyyy = str.match(/^(\d{2})[\.\/-](\d{2})[\.\/-](\d{4})$/);
      if (ddmmyyyy) {
        const [day, month, year] = [ddmmyyyy[1], ddmmyyyy[2], ddmmyyyy[3]];
        if (isValidDateParts(day, month, year)) {
          return `${day}.${month}.${year}`;
        }
      }

      const yyyymmdd = str.match(/^(\d{4})[\.\/-](\d{2})[\.\/-](\d{2})$/);
      if (yyyymmdd) {
        const [year, month, day] = [yyyymmdd[1], yyyymmdd[2], yyyymmdd[3]];
        if (isValidDateParts(day, month, year)) {
          return `${day}.${month}.${year}`;
        }
      }

      const digitsOnly = str.replace(/[^0-9]/g, '');
      if (digitsOnly.length === 8) {
        const day = digitsOnly.substring(0, 2);
        const month = digitsOnly.substring(2, 4);
        const year = digitsOnly.substring(4, 8);
        if (isValidDateParts(day, month, year)) {
          return `${day}.${month}.${year}`;
        }
      }

      Logger.warn('[ConsistencyReport] Doğum tarihi normalize edilemedi', { value });
      return null;
    },
  },
];

function isValidDateParts(day, month, year) {
  const d = Number(day);
  const m = Number(month);
  const y = Number(year);

  if (!d || !m || !y) return false;
  if (m < 1 || m > 12) return false;
  if (d < 1 || d > 31) return false;
  if (y < 1900 || y > 2100) return false;
  return true;
}

function compareField(config, mrzData, nfcData) {
  const {
    field,
    label,
    mrzAccessor,
    nfcAccessor,
    normalizer,
    comparator,
  } = config;

  const mrzRaw = mrzAccessor ? mrzAccessor(mrzData) : mrzData?.[field];
  const nfcRaw = nfcAccessor ? nfcAccessor(nfcData) : nfcData?.[field];

  let status;
  let mrzNormalized = null;
  let nfcNormalized = null;

  if (field === 'fullName' && typeof comparator === 'function') {
    mrzNormalized = normalizer ? normalizer(mrzRaw) : mrzRaw;
    nfcNormalized = normalizer ? normalizer(nfcRaw) : nfcRaw;
    status = comparator(mrzNormalized, nfcNormalized);
  } else {
    mrzNormalized = normalizer ? normalizer(mrzRaw) : mrzRaw;
    nfcNormalized = normalizer ? normalizer(nfcRaw) : nfcRaw;

    if (!mrzNormalized && !nfcNormalized) {
      status = FIELD_STATUS.MISSING_BOTH;
    } else if (!mrzNormalized) {
      status = FIELD_STATUS.MISSING_MRZ;
    } else if (!nfcNormalized) {
      status = FIELD_STATUS.MISSING_NFC;
    } else if (mrzNormalized === nfcNormalized) {
      status = FIELD_STATUS.MATCH;
    } else {
      status = FIELD_STATUS.MISMATCH;
    }
  }

  const notes = buildFieldNotes(status, label);

  return {
    field,
    label,
    mrzValue: mrzRaw || null,
    nfcValue: nfcRaw || null,
    status,
    ...(status === FIELD_STATUS.MISMATCH && mrzRaw && nfcRaw
      ? { details: `${label} alanı farklı değerler içeriyor.` }
      : {}),
    ...(notes ? { notes } : {}),
  };
}

function buildFieldNotes(status, label) {
  switch (status) {
    case FIELD_STATUS.MISSING_MRZ:
      return `${label} MRZ verisinde bulunamadı.`;
    case FIELD_STATUS.MISSING_NFC:
      return `${label} NFC verisinde bulunamadı.`;
    case FIELD_STATUS.MISSING_BOTH:
      return `${label} hem MRZ hem NFC verilerinde eksik.`;
    default:
      return null;
  }
}

function computeOverallStatus(fieldResults) {
  if (fieldResults.every((result) => result.status === FIELD_STATUS.MATCH)) {
    return OVERALL_STATUS.MATCH;
  }

  if (fieldResults.some((result) => result.status === FIELD_STATUS.MISMATCH)) {
    return OVERALL_STATUS.MISMATCH;
  }

  return OVERALL_STATUS.INCOMPLETE;
}

function buildSummary(fieldResults) {
  const matched = [];
  const mismatched = [];
  const missing = [];

  fieldResults.forEach((result) => {
    switch (result.status) {
      case FIELD_STATUS.MATCH:
        matched.push(result.label);
        break;
      case FIELD_STATUS.MISMATCH:
        mismatched.push(result.label);
        break;
      case FIELD_STATUS.MISSING_MRZ:
      case FIELD_STATUS.MISSING_NFC:
      case FIELD_STATUS.MISSING_BOTH:
        missing.push(result.label);
        break;
      default:
        break;
    }
  });

  if (!mismatched.length && !missing.length && matched.length === fieldResults.length) {
    return 'Tüm kritik alanlar tutarlı.';
  }

  const parts = [];

  if (matched.length) {
    parts.push(`Tutarlı: ${matched.join(', ')}`);
  }
  if (mismatched.length) {
    parts.push(`Uyumsuz: ${mismatched.join(', ')}`);
  }
  if (missing.length) {
    parts.push(`Eksik: ${missing.join(', ')}`);
  }

  return parts.join(' | ');
}

function buildCoreConsistencyReport({ mrzData = {}, nfcData = {} } = {}) {
  const fieldResults = FIELD_CONFIG.map((config) =>
    compareField(config, mrzData, nfcData)
  );

  const overallStatus = computeOverallStatus(fieldResults);
  const summary = buildSummary(fieldResults);

  return {
    scope: 'critical_fields_v1',
    generatedAt: new Date().toISOString(),
    overallStatus,
    summary,
    fields: fieldResults,
    source: {
      mrz: mrzData?.source || 'MRZ',
      nfc: nfcData?.source || 'NFC',
    },
  };
}

module.exports = {
  buildCoreConsistencyReport,
  buildVerificationDraft,
  FIELD_STATUS,
  OVERALL_STATUS,
};

function buildVerificationDraft({ mrzData = {}, nfcData = {} } = {}) {
  const coreConsistency = buildCoreConsistencyReport({ mrzData, nfcData });

  return {
    version: 'v1-alpha',
    generatedAt: coreConsistency.generatedAt,
    statuses: {
      coreConsistency: coreConsistency.overallStatus,
      biometricComparison: 'pending',
      documentAuthenticity: 'pending',
    },
    sections: {
      coreConsistency,
      biometricComparison: {
        status: 'pending',
        summary: 'Yüz karşılaştırması henüz yapılmadı.',
        details: null,
      },
      documentAuthenticity: {
        status: 'pending',
        summary: 'NFC chip doğrulaması beklemede.',
        details: null,
      },
    },
    nextSteps: [
      'Chip fotoğrafı - canlılık karşılaştırmasını tamamlayın.',
      'Belge numarası, cinsiyet, vatandaşlık ve son geçerlilik alanlarını doğrulayın.',
    ],
  };
}
