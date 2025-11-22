package oc;

import l9.m;
import nc.i;
import nc.j;

/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f11306a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f11307b;

    public a(j jVar, c cVar) {
        this.f11306a = jVar;
        this.f11307b = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11306a.j(this.f11307b, m.f9594a);
    }
}
