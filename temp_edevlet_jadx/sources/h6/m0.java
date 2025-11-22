package h6;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import j6.a0;
import j6.k;
import j6.l;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import s4.a9;

/* loaded from: classes2.dex */
public final class m0 {

    /* renamed from: a, reason: collision with root package name */
    public final z f6937a;

    /* renamed from: b, reason: collision with root package name */
    public final m6.e f6938b;

    /* renamed from: c, reason: collision with root package name */
    public final n6.a f6939c;

    /* renamed from: d, reason: collision with root package name */
    public final i6.b f6940d;

    /* renamed from: e, reason: collision with root package name */
    public final n0 f6941e;

    public m0(z zVar, m6.e eVar, n6.a aVar, i6.b bVar, n0 n0Var) {
        this.f6937a = zVar;
        this.f6938b = eVar;
        this.f6939c = aVar;
        this.f6940d = bVar;
        this.f6941e = n0Var;
    }

    public static j6.k a(j6.k kVar, i6.b bVar, n0 n0Var) {
        Map mapUnmodifiableMap;
        k.a aVar = new k.a(kVar);
        String strB = bVar.f7287b.b();
        if (strB != null) {
            aVar.f8202e = new j6.t(strB);
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "No log data to include with this event.", null);
        }
        j0 j0Var = n0Var.f6942a;
        synchronized (j0Var) {
            mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(j0Var.f6926a));
        }
        ArrayList arrayListC = c(mapUnmodifiableMap);
        ArrayList arrayListC2 = c(n0Var.f6943b.a());
        if (!arrayListC.isEmpty()) {
            l.a aVarF = kVar.f8195c.f();
            aVarF.f8209b = new j6.b0<>(arrayListC);
            aVarF.f8210c = new j6.b0<>(arrayListC2);
            aVar.f8200c = aVarF.a();
        }
        return aVar.a();
    }

    public static m0 b(Context context, g0 g0Var, m6.f fVar, a aVar, i6.b bVar, n0 n0Var, a9 a9Var, o6.c cVar) {
        z zVar = new z(context, g0Var, aVar, a9Var);
        m6.e eVar = new m6.e(fVar, cVar);
        k6.a aVar2 = n6.a.f10593b;
        u2.w.b(context);
        return new m0(zVar, eVar, new n6.a(u2.w.a().c(new s2.a(n6.a.f10594c, n6.a.f10595d)).a("FIREBASE_CRASHLYTICS_REPORT", new r2.b("json"), n6.a.f10596e)), bVar, n0Var);
    }

    @NonNull
    public static ArrayList c(@NonNull Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null) {
                throw new NullPointerException("Null key");
            }
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                throw new NullPointerException("Null value");
            }
            arrayList.add(new j6.d(str, str2));
        }
        Collections.sort(arrayList, new Comparator() { // from class: h6.l0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((a0.c) obj).a().compareTo(((a0.c) obj2).a());
            }
        });
        return arrayList;
    }

    public final h5.z d(@NonNull Executor executor) {
        ArrayList arrayListB = this.f6938b.b();
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayListB.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            try {
                k6.a aVar = m6.e.f;
                String strD = m6.e.d(file);
                aVar.getClass();
                arrayList.add(new b(k6.a.g(strD), file.getName(), file));
            } catch (IOException e10) {
                Log.w("FirebaseCrashlytics", "Could not load report file " + file + "; deleting", e10);
                file.delete();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            a0 a0Var = (a0) it2.next();
            n6.a aVar2 = this.f6939c;
            aVar2.getClass();
            j6.a0 a0VarA = a0Var.a();
            h5.l lVar = new h5.l();
            aVar2.f10597a.b(new r2.a(a0VarA, r2.d.HIGHEST), new a3.j(lVar, a0Var));
            arrayList2.add(lVar.f6841a.e(executor, new androidx.camera.camera2.internal.compat.workaround.b(2, this)));
        }
        return h5.n.f(arrayList2);
    }
}
