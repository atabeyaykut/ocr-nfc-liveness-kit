package r3;

import android.content.Intent;

/* loaded from: classes.dex */
public final class c0 extends d0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Intent f13940a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o3.g f13941b;

    public c0(Intent intent, o3.g gVar) {
        this.f13940a = intent;
        this.f13941b = gVar;
    }

    @Override // r3.d0
    public final void a() {
        Intent intent = this.f13940a;
        if (intent != null) {
            this.f13941b.startActivityForResult(intent, 2);
        }
    }
}
