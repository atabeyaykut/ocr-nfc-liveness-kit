package io.realm;

import java.io.File;

/* loaded from: classes2.dex */
public final class l0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ File f7708a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o0 f7709b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f7710c;

    public l0(File file, o0 o0Var, boolean z10) {
        this.f7708a = file;
        this.f7709b = o0Var;
        this.f7710c = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o0 o0Var = this.f7709b;
        File file = this.f7708a;
        if (file != null) {
            m0.a(file, o0Var.f7747d);
        }
        if (this.f7710c) {
            o0Var.getClass();
            io.realm.internal.j.f7665a.getClass();
            m0.a(new File((String) null), null);
        }
    }
}
