package io.realm;

import io.realm.g0;
import io.realm.internal.OsSharedRealm;

/* loaded from: classes2.dex */
public final class b implements OsSharedRealm.InitializationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g0.a f7473a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f7474b;

    public b(a aVar, g0.a aVar2) {
        this.f7474b = aVar;
        this.f7473a = aVar2;
    }

    @Override // io.realm.internal.OsSharedRealm.InitializationCallback
    public final void onInit(OsSharedRealm osSharedRealm) {
        this.f7473a.d(new g0(osSharedRealm));
    }
}
