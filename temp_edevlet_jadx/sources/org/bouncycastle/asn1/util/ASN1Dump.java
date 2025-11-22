package org.bouncycastle.asn1.util;

import android.support.v4.media.a;
import androidx.browser.browseractions.b;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1BMPString;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1Boolean;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1External;
import org.bouncycastle.asn1.ASN1GeneralizedTime;
import org.bouncycastle.asn1.ASN1GraphicString;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1NumericString;
import org.bouncycastle.asn1.ASN1ObjectDescriptor;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1PrintableString;
import org.bouncycastle.asn1.ASN1RelativeOID;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1T61String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UTCTime;
import org.bouncycastle.asn1.ASN1UTF8String;
import org.bouncycastle.asn1.ASN1Util;
import org.bouncycastle.asn1.ASN1VideotexString;
import org.bouncycastle.asn1.ASN1VisibleString;
import org.bouncycastle.asn1.BEROctetString;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DLBitString;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class ASN1Dump {
    private static final int SAMPLE_SIZE = 32;
    private static final String TAB = "    ";

    public static void _dumpAsString(String str, boolean z10, ASN1Primitive aSN1Primitive, StringBuffer stringBuffer) {
        StringBuilder sbE;
        String string;
        BigInteger value;
        StringBuilder sbE2;
        String str2;
        String strDumpBinaryDataAsString;
        String id2;
        StringBuilder sbI;
        int length;
        String strLineSeparator = Strings.lineSeparator();
        if (aSN1Primitive instanceof ASN1Null) {
            stringBuffer.append(str);
            stringBuffer.append("NULL");
        } else {
            int r22 = 0;
            if (aSN1Primitive instanceof ASN1Sequence) {
                stringBuffer.append(str);
                stringBuffer.append(aSN1Primitive instanceof BERSequence ? "BER Sequence" : aSN1Primitive instanceof DERSequence ? "DER Sequence" : "Sequence");
                stringBuffer.append(strLineSeparator);
                ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
                String strF = a.f(str, TAB);
                int size = aSN1Sequence.size();
                while (r22 < size) {
                    _dumpAsString(strF, z10, aSN1Sequence.getObjectAt(r22).toASN1Primitive(), stringBuffer);
                    r22++;
                }
                return;
            }
            if (aSN1Primitive instanceof ASN1Set) {
                stringBuffer.append(str);
                stringBuffer.append(aSN1Primitive instanceof BERSet ? "BER Set" : aSN1Primitive instanceof DERSet ? "DER Set" : "Set");
                stringBuffer.append(strLineSeparator);
                ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
                String strF2 = a.f(str, TAB);
                int size2 = aSN1Set.size();
                while (r22 < size2) {
                    _dumpAsString(strF2, z10, aSN1Set.getObjectAt(r22).toASN1Primitive(), stringBuffer);
                    r22++;
                }
                return;
            }
            if (aSN1Primitive instanceof ASN1TaggedObject) {
                stringBuffer.append(str);
                stringBuffer.append(aSN1Primitive instanceof BERTaggedObject ? "BER Tagged " : aSN1Primitive instanceof DERTaggedObject ? "DER Tagged " : "Tagged ");
                ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
                stringBuffer.append(ASN1Util.getTagText(aSN1TaggedObject));
                if (!aSN1TaggedObject.isExplicit()) {
                    stringBuffer.append(" IMPLICIT ");
                }
                stringBuffer.append(strLineSeparator);
                _dumpAsString(str + TAB, z10, aSN1TaggedObject.getBaseObject().toASN1Primitive(), stringBuffer);
                return;
            }
            if (!(aSN1Primitive instanceof ASN1OctetString)) {
                if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
                    sbE = b.i(str, "ObjectIdentifier(");
                    id2 = ((ASN1ObjectIdentifier) aSN1Primitive).getId();
                } else {
                    if (!(aSN1Primitive instanceof ASN1RelativeOID)) {
                        if (aSN1Primitive instanceof ASN1Boolean) {
                            sbE = b.i(str, "Boolean(");
                            sbE.append(((ASN1Boolean) aSN1Primitive).isTrue());
                        } else {
                            if (aSN1Primitive instanceof ASN1Integer) {
                                sbE = b.i(str, "Integer(");
                                value = ((ASN1Integer) aSN1Primitive).getValue();
                            } else {
                                if (!(aSN1Primitive instanceof ASN1BitString)) {
                                    if (aSN1Primitive instanceof ASN1IA5String) {
                                        sbE = b.i(str, "IA5String(");
                                        string = ((ASN1IA5String) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1UTF8String) {
                                        sbE = b.i(str, "UTF8String(");
                                        string = ((ASN1UTF8String) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1NumericString) {
                                        sbE = b.i(str, "NumericString(");
                                        string = ((ASN1NumericString) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1PrintableString) {
                                        sbE = b.i(str, "PrintableString(");
                                        string = ((ASN1PrintableString) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1VisibleString) {
                                        sbE = b.i(str, "VisibleString(");
                                        string = ((ASN1VisibleString) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1BMPString) {
                                        sbE = b.i(str, "BMPString(");
                                        string = ((ASN1BMPString) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1T61String) {
                                        sbE = b.i(str, "T61String(");
                                        string = ((ASN1T61String) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1GraphicString) {
                                        sbE = b.i(str, "GraphicString(");
                                        string = ((ASN1GraphicString) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1VideotexString) {
                                        sbE = b.i(str, "VideotexString(");
                                        string = ((ASN1VideotexString) aSN1Primitive).getString();
                                    } else if (aSN1Primitive instanceof ASN1UTCTime) {
                                        sbE = b.i(str, "UTCTime(");
                                        string = ((ASN1UTCTime) aSN1Primitive).getTime();
                                    } else if (aSN1Primitive instanceof ASN1GeneralizedTime) {
                                        sbE = b.i(str, "GeneralizedTime(");
                                        string = ((ASN1GeneralizedTime) aSN1Primitive).getTime();
                                    } else if (aSN1Primitive instanceof ASN1Enumerated) {
                                        sbE = b.i(str, "DER Enumerated(");
                                        value = ((ASN1Enumerated) aSN1Primitive).getValue();
                                    } else {
                                        if (!(aSN1Primitive instanceof ASN1ObjectDescriptor)) {
                                            if (!(aSN1Primitive instanceof ASN1External)) {
                                                sbE = androidx.constraintlayout.core.a.e(str);
                                                sbE.append(aSN1Primitive.toString());
                                                sbE.append(strLineSeparator);
                                                strDumpBinaryDataAsString = sbE.toString();
                                                stringBuffer.append(strDumpBinaryDataAsString);
                                                return;
                                            }
                                            ASN1External aSN1External = (ASN1External) aSN1Primitive;
                                            stringBuffer.append(str + "External " + strLineSeparator);
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append(TAB);
                                            String string2 = sb2.toString();
                                            if (aSN1External.getDirectReference() != null) {
                                                StringBuilder sbI2 = b.i(string2, "Direct Reference: ");
                                                sbI2.append(aSN1External.getDirectReference().getId());
                                                sbI2.append(strLineSeparator);
                                                stringBuffer.append(sbI2.toString());
                                            }
                                            if (aSN1External.getIndirectReference() != null) {
                                                StringBuilder sbI3 = b.i(string2, "Indirect Reference: ");
                                                sbI3.append(aSN1External.getIndirectReference().toString());
                                                sbI3.append(strLineSeparator);
                                                stringBuffer.append(sbI3.toString());
                                            }
                                            if (aSN1External.getDataValueDescriptor() != null) {
                                                _dumpAsString(string2, z10, aSN1External.getDataValueDescriptor(), stringBuffer);
                                            }
                                            StringBuilder sbI4 = b.i(string2, "Encoding: ");
                                            sbI4.append(aSN1External.getEncoding());
                                            sbI4.append(strLineSeparator);
                                            stringBuffer.append(sbI4.toString());
                                            _dumpAsString(string2, z10, aSN1External.getExternalContent(), stringBuffer);
                                            return;
                                        }
                                        sbE = b.i(str, "ObjectDescriptor(");
                                        string = ((ASN1ObjectDescriptor) aSN1Primitive).getBaseGraphicString().getString();
                                    }
                                    sbE.append(string);
                                    sbE.append(") ");
                                    sbE.append(strLineSeparator);
                                    strDumpBinaryDataAsString = sbE.toString();
                                    stringBuffer.append(strDumpBinaryDataAsString);
                                    return;
                                }
                                ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
                                byte[] bytes = aSN1BitString.getBytes();
                                int padBits = aSN1BitString.getPadBits();
                                if (aSN1BitString instanceof DERBitString) {
                                    sbE2 = androidx.constraintlayout.core.a.e(str);
                                    str2 = "DER Bit String[";
                                } else if (aSN1BitString instanceof DLBitString) {
                                    sbE2 = androidx.constraintlayout.core.a.e(str);
                                    str2 = "DL Bit String[";
                                } else {
                                    sbE2 = androidx.constraintlayout.core.a.e(str);
                                    str2 = "BER Bit String[";
                                }
                                sbE2.append(str2);
                                sbE2.append(bytes.length);
                                sbE2.append(", ");
                                sbE2.append(padBits);
                                sbE2.append("] ");
                                stringBuffer.append(sbE2.toString());
                                if (z10) {
                                    strDumpBinaryDataAsString = dumpBinaryDataAsString(str, bytes);
                                    stringBuffer.append(strDumpBinaryDataAsString);
                                    return;
                                }
                            }
                            sbE.append(value);
                        }
                        sbE.append(")");
                        sbE.append(strLineSeparator);
                        strDumpBinaryDataAsString = sbE.toString();
                        stringBuffer.append(strDumpBinaryDataAsString);
                        return;
                    }
                    sbE = b.i(str, "RelativeOID(");
                    id2 = ((ASN1RelativeOID) aSN1Primitive).getId();
                }
                sbE.append(id2);
                sbE.append(")");
                sbE.append(strLineSeparator);
                strDumpBinaryDataAsString = sbE.toString();
                stringBuffer.append(strDumpBinaryDataAsString);
                return;
            }
            ASN1OctetString aSN1OctetString = (ASN1OctetString) aSN1Primitive;
            if (aSN1Primitive instanceof BEROctetString) {
                sbI = b.i(str, "BER Constructed Octet String[");
                length = aSN1OctetString.getOctets().length;
            } else {
                sbI = b.i(str, "DER Octet String[");
                length = aSN1OctetString.getOctets().length;
            }
            sbI.append(length);
            sbI.append("] ");
            stringBuffer.append(sbI.toString());
            if (z10) {
                strDumpBinaryDataAsString = dumpBinaryDataAsString(str, aSN1OctetString.getOctets());
                stringBuffer.append(strDumpBinaryDataAsString);
                return;
            }
        }
        stringBuffer.append(strLineSeparator);
    }

    private static String calculateAscString(byte[] bArr, int r52, int r6) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int r12 = r52; r12 != r52 + r6; r12++) {
            byte b10 = bArr[r12];
            if (b10 >= 32 && b10 <= 126) {
                stringBuffer.append((char) b10);
            }
        }
        return stringBuffer.toString();
    }

    public static String dumpAsString(Object obj) {
        return dumpAsString(obj, false);
    }

    public static String dumpAsString(Object obj, boolean z10) {
        ASN1Primitive aSN1Primitive;
        if (obj instanceof ASN1Primitive) {
            aSN1Primitive = (ASN1Primitive) obj;
        } else {
            if (!(obj instanceof ASN1Encodable)) {
                return "unknown object type " + obj.toString();
            }
            aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        }
        StringBuffer stringBuffer = new StringBuffer();
        _dumpAsString("", z10, aSN1Primitive, stringBuffer);
        return stringBuffer.toString();
    }

    private static String dumpBinaryDataAsString(String str, byte[] bArr) {
        String strCalculateAscString;
        String strLineSeparator = Strings.lineSeparator();
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + TAB;
        stringBuffer.append(strLineSeparator);
        for (int r32 = 0; r32 < bArr.length; r32 += 32) {
            int length = bArr.length - r32;
            stringBuffer.append(str2);
            if (length > 32) {
                stringBuffer.append(Strings.fromByteArray(Hex.encode(bArr, r32, 32)));
                stringBuffer.append(TAB);
                strCalculateAscString = calculateAscString(bArr, r32, 32);
            } else {
                stringBuffer.append(Strings.fromByteArray(Hex.encode(bArr, r32, bArr.length - r32)));
                for (int length2 = bArr.length - r32; length2 != 32; length2++) {
                    stringBuffer.append("  ");
                }
                stringBuffer.append(TAB);
                strCalculateAscString = calculateAscString(bArr, r32, bArr.length - r32);
            }
            stringBuffer.append(strCalculateAscString);
            stringBuffer.append(strLineSeparator);
        }
        return stringBuffer.toString();
    }
}
