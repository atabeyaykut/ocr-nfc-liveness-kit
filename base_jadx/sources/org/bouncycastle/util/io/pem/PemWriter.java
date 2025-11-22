package org.bouncycastle.util.io.pem;

import androidx.camera.core.impl.a;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Base64;

/* loaded from: classes2.dex */
public class PemWriter extends BufferedWriter {
    private static final int LINE_LENGTH = 64;
    private char[] buf;
    private final int nlLength;

    public PemWriter(Writer writer) {
        super(writer);
        this.buf = new char[64];
        String strLineSeparator = Strings.lineSeparator();
        this.nlLength = strLineSeparator != null ? strLineSeparator.length() : 2;
    }

    private void writeEncoded(byte[] bArr) throws IOException {
        char[] cArr;
        int r42;
        byte[] bArrEncode = Base64.encode(bArr);
        int length = 0;
        while (length < bArrEncode.length) {
            int r22 = 0;
            while (true) {
                cArr = this.buf;
                if (r22 == cArr.length || (r42 = length + r22) >= bArrEncode.length) {
                    break;
                }
                cArr[r22] = (char) bArrEncode[r42];
                r22++;
            }
            write(cArr, 0, r22);
            newLine();
            length += this.buf.length;
        }
    }

    private void writePostEncapsulationBoundary(String str) throws IOException {
        write("-----END " + str + "-----");
        newLine();
    }

    private void writePreEncapsulationBoundary(String str) throws IOException {
        write("-----BEGIN " + str + "-----");
        newLine();
    }

    public int getOutputSize(PemObject pemObject) {
        int length = ((pemObject.getType().length() + 10 + this.nlLength) * 2) + 6 + 4;
        if (!pemObject.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : pemObject.getHeaders()) {
                length += pemHeader.getValue().length() + pemHeader.getName().length() + 2 + this.nlLength;
            }
            length += this.nlLength;
        }
        return a.d(((r5 + 64) - 1) / 64, this.nlLength, ((pemObject.getContent().length + 2) / 3) * 4, length);
    }

    public void writeObject(PemObjectGenerator pemObjectGenerator) throws IOException {
        PemObject pemObjectGenerate = pemObjectGenerator.generate();
        writePreEncapsulationBoundary(pemObjectGenerate.getType());
        if (!pemObjectGenerate.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : pemObjectGenerate.getHeaders()) {
                write(pemHeader.getName());
                write(": ");
                write(pemHeader.getValue());
                newLine();
            }
            newLine();
        }
        writeEncoded(pemObjectGenerate.getContent());
        writePostEncapsulationBoundary(pemObjectGenerate.getType());
    }
}
