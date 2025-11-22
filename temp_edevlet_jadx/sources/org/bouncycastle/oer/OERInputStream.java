package org.bouncycastle.oer;

import androidx.appcompat.widget.v;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.Iterator;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.oer.OERDefinition;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes2.dex */
public class OERInputStream extends FilterInputStream {
    private static final int[] bits = {1, 2, 4, 8, 16, 32, 64, 128};
    private static final int[] bitsR = {128, 64, 32, 16, 8, 4, 2, 1};
    protected PrintWriter debugOutput;
    protected PrintWriter debugStream;
    private int maxByteAllocation;

    /* renamed from: org.bouncycastle.oer.OERInputStream$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType;

        static {
            int[] r02 = new int[OERDefinition.BaseType.values().length];
            $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType = r02;
            try {
                r02[OERDefinition.BaseType.OPAQUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.Switch.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.Supplier.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.SEQ_OF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.SEQ.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.CHOICE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.ENUM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.INT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.OCTET_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.IA5String.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.UTF8_STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.BIT_STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.NULL.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.EXTENSION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.BOOLEAN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public static class Choice extends OERInputStream {
        final int preamble;
        final int tag;
        final int tagClass;

        public Choice(InputStream inputStream) throws IOException {
            int r12;
            super(inputStream);
            int r02 = read();
            this.preamble = r02;
            if (r02 < 0) {
                throw new EOFException("expecting preamble byte of choice");
            }
            this.tagClass = r02 & 192;
            int r03 = r02 & 63;
            if (r03 >= 63) {
                r03 = 0;
                do {
                    r12 = inputStream.read();
                    if (r12 < 0) {
                        throw new EOFException("expecting further tag bytes");
                    }
                    r03 = (r03 << 7) | (r12 & CertificateBody.profileType);
                } while ((r12 & 128) != 0);
            }
            this.tag = r03;
        }

        public int getTag() {
            return this.tag;
        }

        public int getTagClass() {
            return this.tagClass;
        }

        public boolean isApplicationTagClass() {
            return this.tagClass == 64;
        }

        public boolean isContextSpecific() {
            return this.tagClass == 128;
        }

        public boolean isPrivateTagClass() {
            return this.tagClass == 192;
        }

        public boolean isUniversalTagClass() {
            return this.tagClass == 0;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder("CHOICE(");
            int r12 = this.tagClass;
            if (r12 == 0) {
                str = "Universal ";
            } else if (r12 == 64) {
                str = "Application ";
            } else {
                if (r12 != 128) {
                    if (r12 == 192) {
                        str = "Private ";
                    }
                    sb2.append("Tag = " + this.tag);
                    sb2.append(")");
                    return sb2.toString();
                }
                str = "ContextSpecific ";
            }
            sb2.append(str);
            sb2.append("Tag = " + this.tag);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class LengthInfo {
        private final BigInteger length;
        private final boolean shortForm;

        public LengthInfo(BigInteger bigInteger, boolean z10) {
            this.length = bigInteger;
            this.shortForm = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int intLength() {
            return BigIntegers.intValueExact(this.length);
        }
    }

    public static class Sequence extends OERInputStream {
        private final boolean extensionFlagSet;
        private final int preamble;
        private final boolean[] valuePresent;

        public Sequence(InputStream inputStream, Element element) throws IOException {
            int r72;
            super(inputStream);
            if (!element.hasPopulatedExtension() && element.getOptionals() <= 0 && !element.hasDefaultChildren()) {
                this.preamble = 0;
                this.extensionFlagSet = false;
                this.valuePresent = null;
                return;
            }
            int r02 = ((FilterInputStream) this).in.read();
            this.preamble = r02;
            if (r02 < 0) {
                throw new EOFException("expecting preamble byte of sequence");
            }
            this.extensionFlagSet = element.hasPopulatedExtension() && (r02 & 128) == 128;
            this.valuePresent = new boolean[element.getChildren().size()];
            int r22 = element.hasPopulatedExtension() ? 6 : 7;
            int r52 = 0;
            for (Element element2 : element.getChildren()) {
                if (element2.getBaseType() != OERDefinition.BaseType.EXTENSION) {
                    if (element2.getBlock() != 0) {
                        return;
                    }
                    if (element2.isExplicit()) {
                        r72 = r52 + 1;
                        this.valuePresent[r52] = true;
                    } else {
                        if (r22 < 0) {
                            r02 = inputStream.read();
                            if (r02 < 0) {
                                throw new EOFException("expecting mask byte sequence");
                            }
                            r22 = 7;
                        }
                        r72 = r52 + 1;
                        this.valuePresent[r52] = (OERInputStream.bits[r22] & r02) > 0;
                        r22--;
                    }
                    r52 = r72;
                }
            }
        }

        public boolean hasExtension() {
            return this.extensionFlagSet;
        }

        public boolean hasOptional(int r22) {
            return this.valuePresent[r22];
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("SEQ(");
            sb2.append(hasExtension() ? "Ext " : "");
            if (this.valuePresent != null) {
                int r12 = 0;
                while (true) {
                    boolean[] zArr = this.valuePresent;
                    if (r12 >= zArr.length) {
                        break;
                    }
                    sb2.append(zArr[r12] ? "1" : "0");
                    r12++;
                }
            } else {
                sb2.append("*");
            }
            sb2.append(")");
            return sb2.toString();
        }
    }

    public OERInputStream(InputStream inputStream) {
        super(inputStream);
        this.debugOutput = null;
        this.maxByteAllocation = 1048576;
        this.debugStream = null;
    }

    public OERInputStream(InputStream inputStream, int r22) {
        super(inputStream);
        this.debugOutput = null;
        this.debugStream = null;
        this.maxByteAllocation = r22;
    }

    private ASN1Encodable absent(Element element) {
        debugPrint(element + "Absent");
        return OEROptional.ABSENT;
    }

    private byte[] allocateArray(int r42) {
        if (r42 <= this.maxByteAllocation) {
            return new byte[r42];
        }
        StringBuilder sbE = v.e("required byte array size ", r42, " was greater than ");
        sbE.append(this.maxByteAllocation);
        throw new IllegalArgumentException(sbE.toString());
    }

    private int countOptionalChildTypes(Element element) {
        Iterator<Element> it = element.getChildren().iterator();
        int r02 = 0;
        while (it.hasNext()) {
            r02 += !it.next().isExplicit() ? 1 : 0;
        }
        return r02;
    }

    public static ASN1Encodable parse(byte[] bArr, Element element) throws IOException {
        return new OERInputStream(new ByteArrayInputStream(bArr)).parse(element);
    }

    public Choice choice() throws IOException {
        return new Choice(this);
    }

    public void debugPrint(String str) {
        if (this.debugOutput == null) {
            return;
        }
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int r22 = -1;
        for (int r32 = 0; r32 != stackTrace.length; r32++) {
            StackTraceElement stackTraceElement = stackTrace[r32];
            if (stackTraceElement.getMethodName().equals("debugPrint")) {
                r22 = 0;
            } else if (stackTraceElement.getClassName().contains("OERInput")) {
                r22++;
            }
        }
        while (true) {
            PrintWriter printWriter = this.debugOutput;
            if (r22 <= 0) {
                printWriter.append((CharSequence) str).append((CharSequence) "\n");
                this.debugOutput.flush();
                return;
            } else {
                printWriter.append((CharSequence) "    ");
                r22--;
            }
        }
    }

    public BigInteger enumeration() throws IOException {
        int r02 = read();
        if (r02 == -1) {
            throw new EOFException("expecting prefix of enumeration");
        }
        if ((r02 & 128) != 128) {
            return BigInteger.valueOf(r02);
        }
        int r03 = r02 & CertificateBody.profileType;
        if (r03 == 0) {
            return BigInteger.ZERO;
        }
        byte[] bArr = new byte[r03];
        if (Streams.readFully(this, bArr) == r03) {
            return new BigInteger(1, bArr);
        }
        throw new EOFException("unable to fully read integer component of enumeration");
    }

    public BigInteger int16() throws Exception {
        return parseInt(false, 2);
    }

    public BigInteger int32() throws Exception {
        return parseInt(false, 4);
    }

    public BigInteger int64() throws Exception {
        return parseInt(false, 8);
    }

    public BigInteger int8() throws Exception {
        return parseInt(false, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0298 A[PHI: r2
      0x0298: PHI (r2v19 byte[]) = (r2v18 byte[]), (r2v20 byte[]) binds: [B:98:0x0296, B:94:0x027c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.asn1.ASN1Object parse(org.bouncycastle.oer.Element r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.oer.OERInputStream.parse(org.bouncycastle.oer.Element):org.bouncycastle.asn1.ASN1Object");
    }

    public BigInteger parseInt(boolean z10, int r42) throws Exception {
        byte[] bArr = new byte[r42];
        if (Streams.readFully(this, bArr) == r42) {
            return z10 ? new BigInteger(1, bArr) : new BigInteger(bArr);
        }
        throw new IllegalStateException("integer not fully read");
    }

    public ASN1Encodable parseOpenType(Element element) throws Throwable {
        byte[] bArrAllocateArray = allocateArray(readLength().intLength());
        if (Streams.readFully(((FilterInputStream) this).in, bArrAllocateArray) != bArrAllocateArray.length) {
            throw new IOException("did not fully read open type as raw bytes");
        }
        OERInputStream oERInputStream = null;
        try {
            OERInputStream oERInputStream2 = new OERInputStream(new ByteArrayInputStream(bArrAllocateArray));
            try {
                ASN1Object aSN1Object = oERInputStream2.parse(element);
                oERInputStream2.close();
                return aSN1Object;
            } catch (Throwable th2) {
                th = th2;
                oERInputStream = oERInputStream2;
                if (oERInputStream != null) {
                    oERInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public LengthInfo readLength() throws IOException {
        int r02 = read();
        if (r02 == -1) {
            throw new EOFException("expecting length");
        }
        if ((r02 & 128) == 0) {
            StringBuilder sb2 = new StringBuilder("Len (Short form): ");
            int r03 = r02 & CertificateBody.profileType;
            sb2.append(r03);
            debugPrint(sb2.toString());
            return new LengthInfo(BigInteger.valueOf(r03), true);
        }
        int r04 = r02 & CertificateBody.profileType;
        byte[] bArr = new byte[r04];
        if (Streams.readFully(this, bArr) != r04) {
            throw new EOFException("did not read all bytes of length definition");
        }
        StringBuilder sbE = v.e("Len (Long Form): ", r04, " actual len: ");
        sbE.append(Hex.toHexString(bArr));
        debugPrint(sbE.toString());
        return new LengthInfo(BigIntegers.fromUnsignedByteArray(bArr), false);
    }

    public BigInteger uint16() throws Exception {
        return parseInt(true, 2);
    }

    public BigInteger uint32() throws Exception {
        return parseInt(true, 4);
    }

    public BigInteger uint64() throws Exception {
        return parseInt(false, 8);
    }

    public BigInteger uint8() throws Exception {
        return parseInt(true, 1);
    }
}
