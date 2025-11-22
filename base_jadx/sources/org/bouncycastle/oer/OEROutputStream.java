package org.bouncycastle.oer;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.oer.OERDefinition;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class OEROutputStream extends OutputStream {
    private static final int[] bits = {1, 2, 4, 8, 16, 32, 64, 128};
    protected PrintWriter debugOutput = null;
    private final OutputStream out;

    /* renamed from: org.bouncycastle.oer.OEROutputStream$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType;

        static {
            int[] r02 = new int[OERDefinition.BaseType.values().length];
            $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType = r02;
            try {
                r02[OERDefinition.BaseType.Supplier.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.SEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.SEQ_OF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.CHOICE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.OCTET_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.IA5String.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.UTF8_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.BIT_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.NULL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.EXTENSION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.ENUM_ITEM.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.BOOLEAN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public OEROutputStream(OutputStream outputStream) {
        this.out = outputStream;
    }

    public static int byteLength(long j10) {
        int r12 = 8;
        while (r12 > 0 && ((-72057594037927936L) & j10) == 0) {
            j10 <<= 8;
            r12--;
        }
        return r12;
    }

    private void encodeLength(long j10) throws IOException {
        if (j10 <= 127) {
            this.out.write((int) j10);
            return;
        }
        byte[] bArrAsUnsignedByteArray = BigIntegers.asUnsignedByteArray(BigInteger.valueOf(j10));
        this.out.write(bArrAsUnsignedByteArray.length | 128);
        this.out.write(bArrAsUnsignedByteArray);
    }

    private void encodeQuantity(long j10) throws IOException {
        byte[] bArrAsUnsignedByteArray = BigIntegers.asUnsignedByteArray(BigInteger.valueOf(j10));
        this.out.write(bArrAsUnsignedByteArray.length);
        this.out.write(bArrAsUnsignedByteArray);
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

    @Override // java.io.OutputStream
    public void write(int r22) throws IOException {
        this.out.write(r22);
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x047a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(org.bouncycastle.asn1.ASN1Encodable r13, org.bouncycastle.oer.Element r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.oer.OEROutputStream.write(org.bouncycastle.asn1.ASN1Encodable, org.bouncycastle.oer.Element):void");
    }

    public void writePlainType(ASN1Encodable aSN1Encodable, Element element) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OEROutputStream oEROutputStream = new OEROutputStream(byteArrayOutputStream);
        oEROutputStream.write(aSN1Encodable, element);
        oEROutputStream.flush();
        oEROutputStream.close();
        encodeLength(byteArrayOutputStream.size());
        write(byteArrayOutputStream.toByteArray());
    }
}
