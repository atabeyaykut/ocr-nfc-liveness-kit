package net.sf.scuba.tlv;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.util.Hex;

/* loaded from: classes2.dex */
class ASN1Util implements ASN1Constants {
    private static final Logger LOGGER = Logger.getLogger("net.sf.scuba.tlv");
    private static final String SDF = "yyMMddhhmmss'Z'";

    private ASN1Util() {
    }

    public static Object interpretPrimitiveValue(int r32, byte[] bArr) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(SDF);
        if (TLVUtil.getTagClass(r32) != 0) {
            return bArr;
        }
        if (r32 != 12 && r32 != 30 && r32 != 19 && r32 != 20 && r32 != 22) {
            if (r32 != 23) {
                switch (r32) {
                }
                return bArr;
            }
            try {
                return simpleDateFormat.parse(new String(bArr));
            } catch (ParseException e10) {
                LOGGER.log(Level.WARNING, "Parse exception parsing UTC time", (Throwable) e10);
                return bArr;
            }
        }
        return new String(bArr);
    }

    public static String tagToString(int r42) {
        StringBuilder sb2;
        if (TLVUtil.getTagClass(r42) != 0) {
            sb2 = new StringBuilder("'0x");
        } else {
            if (TLVUtil.isPrimitive(r42)) {
                int r02 = r42 & 31;
                if (r02 == 9) {
                    return "REAL";
                }
                if (r02 == 12) {
                    return "UTF_STRING";
                }
                if (r02 == 30) {
                    return "BMP_STRING";
                }
                if (r02 == 19) {
                    return "PRINTABLE_STRING";
                }
                if (r02 == 20) {
                    return "T61_STRING";
                }
                switch (r02) {
                    case 1:
                        return "BOOLEAN";
                    case 2:
                        return "INTEGER";
                    case 3:
                        return "BIT_STRING";
                    case 4:
                        return "OCTET_STRING";
                    case 5:
                        return "NULL";
                    case 6:
                        return "OBJECT_IDENTIFIER";
                    default:
                        switch (r02) {
                            case 22:
                                return "IA5_STRING";
                            case 23:
                                return "UTC_TIME";
                            case 24:
                                return "GENERAL_TIME";
                            default:
                                switch (r02) {
                                    case 26:
                                        return "VISIBLE_STRING";
                                    case 27:
                                        return "GENERAL_STRING";
                                    case 28:
                                        return "UNIVERSAL_STRING";
                                }
                        }
                }
            }
            int r03 = r42 & 31;
            if (r03 == 10) {
                return "ENUMERATED";
            }
            if (r03 == 16) {
                return "SEQUENCE";
            }
            if (r03 == 17) {
                return "SET";
            }
            sb2 = new StringBuilder("'0x");
        }
        sb2.append(Hex.intToHexString(r42));
        sb2.append("'");
        return sb2.toString();
    }
}
