package c6;

import android.app.Service;
import android.content.Context;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes2.dex */
public final class g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f2199a;

    /* renamed from: b, reason: collision with root package name */
    public final b<T> f2200b;

    public static class a implements b<Context> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<? extends Service> f2201a;

        public a(Class cls) {
            this.f2201a = cls;
        }
    }

    @VisibleForTesting
    public interface b<T> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    public g(Object obj, a aVar) {
        this.f2199a = obj;
        this.f2200b = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096 A[LOOP:0: B:26:0x0090->B:28:0x0096, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList a() throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            c6.g$b<T> r1 = r7.f2200b
            c6.g$a r1 = (c6.g.a) r1
            r1.getClass()
            T r2 = r7.f2199a
            android.content.Context r2 = (android.content.Context) r2
            java.lang.String r3 = "ComponentDiscovery"
            java.lang.Class<? extends android.app.Service> r1 = r1.f2201a
            android.content.pm.PackageManager r4 = r2.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            if (r4 != 0) goto L1d
            java.lang.String r1 = "Context has no PackageManager."
            goto L3b
        L1d:
            android.content.ComponentName r5 = new android.content.ComponentName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            r5.<init>(r2, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            r2 = 128(0x80, float:1.8E-43)
            android.content.pm.ServiceInfo r2 = r4.getServiceInfo(r5, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            if (r2 != 0) goto L3f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            r2.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            r2.append(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            java.lang.String r1 = " has no service info."
            r2.append(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            java.lang.String r1 = r2.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
        L3b:
            android.util.Log.w(r3, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            goto L47
        L3f:
            android.os.Bundle r1 = r2.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L42
            goto L48
        L42:
            java.lang.String r1 = "Application info not found."
            android.util.Log.w(r3, r1)
        L47:
            r1 = 0
        L48:
            if (r1 != 0) goto L54
            java.lang.String r1 = "Could not retrieve metadata, returning empty list of registrars."
            android.util.Log.w(r3, r1)
            java.util.List r1 = java.util.Collections.emptyList()
            goto L8c
        L54:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Set r3 = r1.keySet()
            java.util.Iterator r3 = r3.iterator()
        L61:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L8b
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r1.get(r4)
            java.lang.String r6 = "com.google.firebase.components.ComponentRegistrar"
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto L61
            java.lang.String r5 = "com.google.firebase.components:"
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L61
            r5 = 31
            java.lang.String r4 = r4.substring(r5)
            r2.add(r4)
            goto L61
        L8b:
            r1 = r2
        L8c:
            java.util.Iterator r1 = r1.iterator()
        L90:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto La5
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            c6.f r3 = new c6.f
            r3.<init>()
            r0.add(r3)
            goto L90
        La5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.g.a():java.util.ArrayList");
    }
}
