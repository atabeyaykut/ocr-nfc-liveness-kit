package c0;

import android.util.Log;
import java.util.logging.Level;
import qd.e;

/* loaded from: classes.dex */
public final class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1343a;

    public /* synthetic */ c(Object obj) {
        this.f1343a = obj;
    }

    public static int c(Level level) {
        int r12 = level.intValue();
        if (r12 < 800) {
            return r12 < 500 ? 2 : 3;
        }
        if (r12 < 900) {
            return 4;
        }
        return r12 < 1000 ? 5 : 6;
    }

    @Override // qd.e
    public final void a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(c(level), (String) this.f1343a, str);
        }
    }

    @Override // qd.e
    public final void b(Level level, String str, Throwable th2) {
        if (level != Level.OFF) {
            int r32 = c(level);
            String str2 = (String) this.f1343a;
            StringBuilder sbI = androidx.browser.browseractions.b.i(str, "\n");
            sbI.append(Log.getStackTraceString(th2));
            Log.println(r32, str2, sbI.toString());
        }
    }
}
