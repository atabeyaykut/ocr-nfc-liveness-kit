package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public b f3404a;

    /* renamed from: b, reason: collision with root package name */
    public b f3405b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3406c;

    public c() {
        this.f3404a = new b("", 0L, null);
        this.f3405b = new b("", 0L, null);
        this.f3406c = new ArrayList();
    }

    public c(b bVar) {
        this.f3404a = bVar;
        this.f3405b = bVar.clone();
        this.f3406c = new ArrayList();
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        c cVar = new c(this.f3404a.clone());
        Iterator it = this.f3406c.iterator();
        while (it.hasNext()) {
            cVar.f3406c.add(((b) it.next()).clone());
        }
        return cVar;
    }
}
