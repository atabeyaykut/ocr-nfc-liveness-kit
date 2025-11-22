package org.ejbca.cvc;

import ab.b;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.ejbca.cvc.exception.ConstructionException;
import org.ejbca.cvc.exception.ParseException;

/* loaded from: classes2.dex */
public final class CertificateParser {

    /* renamed from: org.ejbca.cvc.CertificateParser$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$ejbca$cvc$CVCTagEnum;

        static {
            int[] r02 = new int[CVCTagEnum.values().length];
            $SwitchMap$org$ejbca$cvc$CVCTagEnum = r02;
            try {
                r02[CVCTagEnum.DISCRETIONARY_DATA_TEMPLATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private CertificateParser() {
    }

    private static CVCObject decode(DataInputStream dataInputStream, CVCTagEnum cVCTagEnum, CVCTagEnum cVCTagEnum2) throws ConstructionException, IOException, ParseException {
        CVCTagEnum cVCTagEnumFindTagFromValue = findTagFromValue(decodeTag(dataInputStream));
        if (cVCTagEnum != null && cVCTagEnumFindTagFromValue != cVCTagEnum) {
            throw new ParseException("Expected first tag " + cVCTagEnum + " but found " + cVCTagEnumFindTagFromValue);
        }
        if (cVCTagEnum2 == null || cVCTagEnumFindTagFromValue.getValue() != cVCTagEnum2.getValue()) {
            cVCTagEnum2 = cVCTagEnumFindTagFromValue;
        }
        int r52 = CVCObject.decodeLength(dataInputStream);
        if (!cVCTagEnum2.isSequence()) {
            byte[] bArr = new byte[r52];
            dataInputStream.read(bArr, 0, r52);
            return FieldFactory.decodeField(cVCTagEnum2, bArr);
        }
        int r02 = dataInputStream.available() - r52;
        AbstractSequence abstractSequenceCreateSequence = SequenceFactory.createSequence(cVCTagEnum2);
        while (dataInputStream.available() > r02) {
            abstractSequenceCreateSequence.addSubfield(decode(dataInputStream, null, AnonymousClass1.$SwitchMap$org$ejbca$cvc$CVCTagEnum[cVCTagEnum2.ordinal()] != 1 ? null : CVCTagEnum.ARBITRARY_DATA));
        }
        return abstractSequenceCreateSequence instanceof GenericPublicKeyField ? KeyFactory.createInstance((GenericPublicKeyField) abstractSequenceCreateSequence) : abstractSequenceCreateSequence;
    }

    private static CVCObject decode(byte[] bArr, CVCTagEnum cVCTagEnum) throws Throwable {
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            try {
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
                try {
                    CVCObject cVCObjectDecode = decode(new DataInputStream(byteArrayInputStream2), cVCTagEnum, null);
                    byteArrayInputStream2.close();
                    return cVCObjectDecode;
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayInputStream = byteArrayInputStream2;
                    if (byteArrayInputStream != null) {
                        byteArrayInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e10) {
            throw new ParseException(e10);
        }
    }

    private static int decodeTag(DataInputStream dataInputStream) throws IOException {
        int unsignedByte = dataInputStream.readUnsignedByte();
        if ((unsignedByte & 31) != 31) {
            return unsignedByte;
        }
        return (unsignedByte << 8) + dataInputStream.readByte();
    }

    private static CVCTagEnum findTagFromValue(int r52) throws ParseException {
        CVCTagEnum cVCTagEnum;
        CVCTagEnum[] cVCTagEnumArrValues = CVCTagEnum.values();
        int length = cVCTagEnumArrValues.length;
        int r22 = 0;
        while (true) {
            if (r22 >= length) {
                cVCTagEnum = null;
                break;
            }
            cVCTagEnum = cVCTagEnumArrValues[r22];
            if (cVCTagEnum.getValue() == r52) {
                break;
            }
            r22++;
        }
        if (cVCTagEnum != null) {
            return cVCTagEnum;
        }
        throw new ParseException(b.c(r52, new StringBuilder("Unknown CVC tag value ")));
    }

    public static CVCObject parseCVCObject(byte[] bArr) throws ConstructionException, ParseException {
        return decode(bArr, null);
    }

    public static CVCertificate parseCertificate(byte[] bArr) throws ConstructionException, ParseException {
        return (CVCertificate) decode(bArr, CVCTagEnum.CV_CERTIFICATE);
    }
}
