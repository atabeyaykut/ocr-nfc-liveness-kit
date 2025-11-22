package j7;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes2.dex */
public abstract class l {
    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            q7.b bVar = new q7.b(stringWriter);
            bVar.f13428e = true;
            m7.o.A.b(bVar, this);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
