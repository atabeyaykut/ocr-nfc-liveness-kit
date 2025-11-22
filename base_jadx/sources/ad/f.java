package ad;

import android.util.Log;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class f extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public static final f f255a = new f();

    @Override // java.util.logging.Handler
    public final void close() {
    }

    @Override // java.util.logging.Handler
    public final void flush() {
    }

    @Override // java.util.logging.Handler
    public final void publish(LogRecord record) {
        int r72;
        kotlin.jvm.internal.h.f(record, "record");
        CopyOnWriteArraySet<Logger> copyOnWriteArraySet = e.f253a;
        String loggerName = record.getLoggerName();
        kotlin.jvm.internal.h.e(loggerName, "record.loggerName");
        int r12 = record.getLevel().intValue() > Level.INFO.intValue() ? 5 : record.getLevel().intValue() == Level.INFO.intValue() ? 4 : 3;
        String message = record.getMessage();
        kotlin.jvm.internal.h.e(message, "record.message");
        Throwable thrown = record.getThrown();
        String strSubstring = e.f254b.get(loggerName);
        if (strSubstring == null) {
            int length = loggerName.length();
            if (23 <= length) {
                length = 23;
            }
            strSubstring = loggerName.substring(0, length);
            kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        if (Log.isLoggable(strSubstring, r12)) {
            if (thrown != null) {
                StringBuilder sbI = androidx.browser.browseractions.b.i(message, "\n");
                sbI.append(Log.getStackTraceString(thrown));
                message = sbI.toString();
            }
            int length2 = message.length();
            int r02 = 0;
            while (r02 < length2) {
                int r6 = mc.n.M(message, '\n', r02, false, 4);
                if (r6 == -1) {
                    r6 = length2;
                }
                while (true) {
                    r72 = Math.min(r6, r02 + 4000);
                    String strSubstring2 = message.substring(r02, r72);
                    kotlin.jvm.internal.h.e(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Log.println(r12, strSubstring, strSubstring2);
                    if (r72 >= r6) {
                        break;
                    } else {
                        r02 = r72;
                    }
                }
                r02 = r72 + 1;
            }
        }
    }
}
