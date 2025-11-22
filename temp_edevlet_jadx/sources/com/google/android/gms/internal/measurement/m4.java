package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class m4 extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n4 f3626a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m4(n4 n4Var) {
        super(null);
        this.f3626a = n4Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        n4 n4Var = this.f3626a;
        synchronized (n4Var.f3638d) {
            n4Var.f3639e = null;
            b5.f3387h.incrementAndGet();
        }
        synchronized (n4Var) {
            Iterator it = n4Var.f.iterator();
            while (it.hasNext()) {
                ((o4) it.next()).a();
            }
        }
    }
}
