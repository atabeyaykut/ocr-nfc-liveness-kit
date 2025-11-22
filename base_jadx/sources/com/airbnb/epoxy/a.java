package com.airbnb.epoxy;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import n3.a;

/* loaded from: classes.dex */
public final class a implements o3.k, h5.h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2535a;

    /* renamed from: b, reason: collision with root package name */
    public Object f2536b;

    public a(int r22) {
        this.f2535a = r22;
        if (r22 != 4) {
            if (r22 != 6) {
                this.f2536b = new ArrayList(5);
            } else {
                this.f2536b = new LinkedHashSet();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Lifecycle c(Context context) {
        if (context instanceof LifecycleOwner) {
            return ((LifecycleOwner) context).getLifecycle();
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        Context baseContext = ((ContextWrapper) context).getBaseContext();
        kotlin.jvm.internal.h.e(baseContext, "baseContext");
        return c(baseContext);
    }

    @Override // h5.h
    public final void a() {
        try {
            ((r3.l) this.f2536b).cancel();
        } catch (RemoteException unused) {
        }
    }

    public final synchronized void b(rc.e0 route) {
        kotlin.jvm.internal.h.f(route, "route");
        ((Set) this.f2536b).remove(route);
    }

    public final void d(x4.h hVar) {
        z3.a aVar = (z3.a) this.f2536b;
        aVar.f19793a = hVar;
        Iterator it = aVar.f19795c.iterator();
        while (it.hasNext()) {
            z3.k kVar = (z3.k) it.next();
            z3.c cVar = ((z3.a) this.f2536b).f19793a;
            kVar.a();
        }
        ((z3.a) this.f2536b).f19795c.clear();
        ((z3.a) this.f2536b).f19794b = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // o3.k
    public final void e(a.e eVar, Object obj) {
        r3.v vVar = (r3.v) this.f2536b;
        h5.l lVar = (h5.l) obj;
        n3.a aVar = t3.c.f15640k;
        t3.a aVar2 = (t3.a) ((t3.d) eVar).w();
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(aVar2.f6833b);
        int r22 = h4.c.f6834a;
        if (vVar == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            vVar.writeToParcel(parcelObtain, 0);
        }
        try {
            aVar2.f6832a.transact(1, parcelObtain, null, 1);
            parcelObtain.recycle();
            lVar.b(null);
        } catch (Throwable th2) {
            parcelObtain.recycle();
            throw th2;
        }
    }

    public final String toString() {
        switch (this.f2535a) {
            case 5:
                return (String) this.f2536b;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ a(int r12, Object obj) {
        this.f2535a = r12;
        this.f2536b = obj;
    }

    public a(String str) {
        this.f2535a = 5;
        this.f2536b = str;
    }
}
