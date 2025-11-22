package r3;

import android.app.Activity;
import android.content.Intent;

/* loaded from: classes.dex */
public final class b0 extends d0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Intent f13910a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f13911b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13912c = 2;

    public b0(Activity activity, Intent intent) {
        this.f13910a = intent;
        this.f13911b = activity;
    }

    @Override // r3.d0
    public final void a() {
        Intent intent = this.f13910a;
        if (intent != null) {
            this.f13911b.startActivityForResult(intent, this.f13912c);
        }
    }
}
