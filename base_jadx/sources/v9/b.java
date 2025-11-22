package v9;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public class b extends IOException {
    public b(File file, File file2, String str) {
        StringBuilder sb2 = new StringBuilder(file.toString());
        if (file2 != null) {
            sb2.append(" -> " + file2);
        }
        if (str != null) {
            sb2.append(": ".concat(str));
        }
        String string = sb2.toString();
        h.e(string, "sb.toString()");
        super(string);
    }
}
