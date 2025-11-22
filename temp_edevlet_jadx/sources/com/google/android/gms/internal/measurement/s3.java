package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class s3 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3732a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3733b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3734c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3735d;

    public /* synthetic */ s3(s3 s3Var, x xVar) {
        this.f3734c = new HashMap();
        this.f3735d = new HashMap();
        this.f3732a = s3Var;
        this.f3733b = xVar;
    }

    public /* synthetic */ s3(Throwable th2, q6.b bVar) {
        this.f3732a = th2.getLocalizedMessage();
        this.f3733b = th2.getClass().getName();
        this.f3734c = bVar.e(th2.getStackTrace());
        Throwable cause = th2.getCause();
        this.f3735d = cause != null ? new s3(cause, bVar) : null;
    }

    public final s3 a() {
        return new s3(this, (x) this.f3733b);
    }

    public final p b(p pVar) {
        return ((x) this.f3733b).a(this, pVar);
    }

    public final p c(f fVar) {
        p pVarA = p.f3668i;
        Iterator<Integer> itC = fVar.C();
        while (itC.hasNext()) {
            pVarA = ((x) this.f3733b).a(this, fVar.z(itC.next().intValue()));
            if (pVarA instanceof h) {
                break;
            }
        }
        return pVarA;
    }

    public final p d(String str) {
        Object obj = this.f3734c;
        if (((Map) obj).containsKey(str)) {
            return (p) ((Map) obj).get(str);
        }
        s3 s3Var = (s3) this.f3732a;
        if (s3Var != null) {
            return s3Var.d(str);
        }
        throw new IllegalArgumentException(String.format("%s is not defined", str));
    }

    public final void e(String str, p pVar) {
        if (((Map) this.f3735d).containsKey(str)) {
            return;
        }
        Map map = (Map) this.f3734c;
        if (pVar == null) {
            map.remove(str);
        } else {
            map.put(str, pVar);
        }
    }

    public final void f(String str, p pVar) {
        Object obj = this.f3734c;
        if (!((Map) obj).containsKey(str)) {
            Object obj2 = this.f3732a;
            s3 s3Var = (s3) obj2;
            if (s3Var != null && s3Var.g(str)) {
                ((s3) obj2).f(str, pVar);
                return;
            }
        }
        if (((Map) this.f3735d).containsKey(str)) {
            return;
        }
        Map map = (Map) obj;
        if (pVar == null) {
            map.remove(str);
        } else {
            map.put(str, pVar);
        }
    }

    public final boolean g(String str) {
        if (((Map) this.f3734c).containsKey(str)) {
            return true;
        }
        s3 s3Var = (s3) this.f3732a;
        if (s3Var != null) {
            return s3Var.g(str);
        }
        return false;
    }
}
