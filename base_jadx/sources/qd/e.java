package qd;

import java.util.logging.Level;

/* loaded from: classes2.dex */
public interface e {

    public static class a implements e {
        @Override // qd.e
        public final void a(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override // qd.e
        public final void b(Level level, String str, Throwable th2) {
            System.out.println("[" + level + "] " + str);
            th2.printStackTrace(System.out);
        }
    }

    void a(Level level, String str);

    void b(Level level, String str, Throwable th2);
}
