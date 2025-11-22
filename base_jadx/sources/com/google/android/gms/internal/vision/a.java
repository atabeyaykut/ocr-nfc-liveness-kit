package com.google.android.gms.internal.vision;

import java.io.PrintStream;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final m0 f3866a;

    /* renamed from: com.google.android.gms.internal.vision.a$a, reason: collision with other inner class name */
    public static final class C0061a extends m0 {
        @Override // com.google.android.gms.internal.vision.m0
        public final void c(Exception exc) {
            exc.printStackTrace();
        }
    }

    static {
        m0 c0061a;
        Integer num = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e10) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e10.printStackTrace(System.err);
            }
            c0061a = (num == null || num.intValue() < 19) ? Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ^ true ? new c() : new C0061a() : new s();
        } catch (Throwable th2) {
            PrintStream printStream = System.err;
            String name = C0061a.class.getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 133);
            sb2.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb2.append(name);
            sb2.append("will be used. The error is: ");
            printStream.println(sb2.toString());
            th2.printStackTrace(System.err);
            c0061a = new C0061a();
        }
        f3866a = c0061a;
        if (num == null) {
            return;
        }
        num.intValue();
    }
}
