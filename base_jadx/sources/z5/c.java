package z5;

import a6.f;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.d2;
import com.google.android.gms.internal.measurement.x1;
import java.util.concurrent.ConcurrentHashMap;
import r3.r;

/* loaded from: classes2.dex */
public final class c implements a {

    /* renamed from: c, reason: collision with root package name */
    public static volatile c f19844c;

    /* renamed from: a, reason: collision with root package name */
    public final b5.a f19845a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f19846b;

    public c(b5.a aVar) {
        r.i(aVar);
        this.f19845a = aVar;
        this.f19846b = new ConcurrentHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a2  */
    @Override // z5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(@androidx.annotation.NonNull java.lang.String r9, @androidx.annotation.NonNull java.lang.String r10, @androidx.annotation.NonNull android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: z5.c.a(java.lang.String, java.lang.String, android.os.Bundle):void");
    }

    @Override // z5.a
    @NonNull
    @WorkerThread
    public final b b(@NonNull String str, @NonNull d6.b bVar) {
        if (!(!a6.b.f122c.contains(str))) {
            return null;
        }
        boolean zIsEmpty = str.isEmpty();
        ConcurrentHashMap concurrentHashMap = this.f19846b;
        if ((zIsEmpty || !concurrentHashMap.containsKey(str) || concurrentHashMap.get(str) == null) ? false : true) {
            return null;
        }
        boolean zEquals = "fiam".equals(str);
        b5.a aVar = this.f19845a;
        Object dVar = zEquals ? new a6.d(aVar, bVar) : ("crash".equals(str) || "clx".equals(str)) ? new f(aVar, bVar) : null;
        if (dVar == null) {
            return null;
        }
        concurrentHashMap.put(str, dVar);
        return new b();
    }

    @Override // z5.a
    public final void c(@NonNull String str) {
        if (!a6.b.f122c.contains("fcm")) {
            d2 d2Var = this.f19845a.f1141a;
            d2Var.getClass();
            d2Var.b(new x1(d2Var, str));
        }
    }
}
