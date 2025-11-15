const normalizeWhitespace = (value) => {
  if (!value) {
    return null;
  }

  if (typeof value !== 'string') {
    value = String(value);
  }

  return value
    .replace(/\s+/g, ' ')
    .trim();
};

const toUpperSafe = (value) => {
  const normalized = normalizeWhitespace(value);
  return normalized ? normalized.toUpperCase() : null;
};

const sanitizeDigits = (value) => {
  if (!value) {
    return null;
  }

  const digits = String(value).replace(/[^0-9]/g, '');
  return digits.length ? digits : null;
};

const normalizeDate = (value) => {
  if (!value) {
    return null;
  }

  const str = String(value).trim();
  const digits = str.replace(/[^0-9]/g, '');

  if (digits.length === 8) {
    const day = digits.substring(0, 2);
    const month = digits.substring(2, 4);
    const year = digits.substring(4, 8);
    return `${day}.${month}.${year}`;
  }

  return str.replace(/[\/-]/g, '.');
};

const splitFullName = (fullName) => {
  const normalized = toUpperSafe(fullName);
  if (!normalized) {
    return { name: null, surname: null };
  }

  const parts = normalized.split(' ');
  if (parts.length === 1) {
    return { name: parts[0], surname: null };
  }

  const surname = parts.pop();
  const name = parts.join(' ');

  return { name, surname };
};

export const normalizeMrzDataFromOCR = (ocrResult) => {
  if (!ocrResult) {
    return {};
  }

  const backFields = ocrResult.backSide || {};
  const mergedData = ocrResult.data || {};
  const fields = ocrResult.fields || {};

  const tcNo = sanitizeDigits(
    backFields.tcNo || mergedData.tcNo || fields.tcNo
  );
  const name = toUpperSafe(backFields.name || mergedData.name || fields.name);
  const surname = toUpperSafe(
    backFields.surname || mergedData.surname || fields.surname
  );
  const birthDate = normalizeDate(
    backFields.birthDate || mergedData.birthDate || fields.birthDate
  );
  const gender =
    backFields.gender || mergedData.gender || fields.gender || null;

  return {
    tcNo: tcNo || null,
    name,
    surname,
    birthDate,
    gender,
    source: backFields.source || mergedData.source || fields.source || 'MRZ',
  };
};

export const normalizeNfcData = (nfcResult) => {
  if (!nfcResult) {
    return {};
  }

  const parsed = nfcResult.parsedFields || {};

  const tcNo = sanitizeDigits(parsed.tcNo || parsed.tc);
  const birthDate = normalizeDate(parsed.birthDate || parsed.birthdate);

  let name = toUpperSafe(parsed.name);
  let surname = toUpperSafe(parsed.surname);
  let fullName = toUpperSafe(parsed.fullName);

  if ((!name || !surname) && fullName) {
    const split = splitFullName(fullName);
    name = name || split.name;
    surname = surname || split.surname;
  }

  if (!fullName && name && surname) {
    fullName = `${name} ${surname}`;
  }

  return {
    tcNo: tcNo || null,
    name,
    surname,
    fullName,
    birthDate,
    gender: parsed.gender || parsed.sex || null,
    source: nfcResult.source || 'NFC',
  };
};
