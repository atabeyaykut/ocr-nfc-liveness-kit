package hf;

import android.content.SharedPreferences;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.h;
import m9.e0;
import m9.w;
import rc.a0;
import rc.b0;
import rc.q;
import rc.r;
import rc.s;
import rc.x;
import sc.c;
import wc.f;

/* loaded from: classes3.dex */
public final class b implements s {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f7110a;

    public b(SharedPreferences sharedPreferences) {
        this.f7110a = sharedPreferences;
    }

    @Override // rc.s
    public final b0 a(f fVar) {
        Map mapUnmodifiableMap;
        x xVar = fVar.f;
        xVar.getClass();
        new LinkedHashMap();
        String str = xVar.f14599c;
        a0 a0Var = xVar.f14601e;
        Map<Class<?>, Object> map = xVar.f;
        LinkedHashMap linkedHashMap = map.isEmpty() ? new LinkedHashMap() : e0.V0(map);
        q.a aVarU = xVar.f14600d.u();
        String value = this.f7110a.getString("user-agent", "");
        if (!(value == null || value.length() == 0)) {
            h.f(value, "value");
            aVarU.a("User-Agent", value);
        }
        r rVar = xVar.f14598b;
        if (rVar == null) {
            throw new IllegalStateException("url == null".toString());
        }
        q qVarC = aVarU.c();
        byte[] bArr = c.f15380a;
        if (linkedHashMap.isEmpty()) {
            mapUnmodifiableMap = w.f10174a;
        } else {
            mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
            h.e(mapUnmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
        }
        return fVar.c(new x(rVar, str, qVarC, a0Var, mapUnmodifiableMap));
    }
}
