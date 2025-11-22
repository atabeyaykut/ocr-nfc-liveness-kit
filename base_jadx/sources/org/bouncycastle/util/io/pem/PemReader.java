package org.bouncycastle.util.io.pem;

import androidx.browser.browseractions.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.bouncycastle.util.encoders.Base64;

/* loaded from: classes2.dex */
public class PemReader extends BufferedReader {
    private static final String BEGIN = "-----BEGIN ";
    private static final String END = "-----END ";

    public PemReader(Reader reader) {
        super(reader);
    }

    private PemObject loadObject(String str) throws IOException {
        String line;
        String strA = a.a(END, str, "-----");
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList();
        while (true) {
            line = readLine();
            if (line == null) {
                break;
            }
            int r42 = line.indexOf(58);
            if (r42 >= 0) {
                arrayList.add(new PemHeader(line.substring(0, r42), line.substring(r42 + 1).trim()));
            } else {
                if (line.indexOf(strA) == 0) {
                    break;
                }
                stringBuffer.append(line.trim());
            }
        }
        if (line != null) {
            return new PemObject(str, arrayList, Base64.decode(stringBuffer.toString()));
        }
        throw new IOException(android.support.v4.media.a.f(strA, " not found"));
    }

    public PemObject readPemObject() throws IOException {
        String line;
        String strTrim;
        int r12;
        do {
            line = readLine();
            if (line == null) {
                break;
            }
        } while (!line.startsWith(BEGIN));
        if (line == null || (r12 = (strTrim = line.substring(11).trim()).indexOf(45)) <= 0 || !strTrim.endsWith("-----") || strTrim.length() - r12 != 5) {
            return null;
        }
        return loadObject(strTrim.substring(0, r12));
    }
}
