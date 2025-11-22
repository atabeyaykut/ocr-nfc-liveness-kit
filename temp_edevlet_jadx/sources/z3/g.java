package z3;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class g implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f19804a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LayoutInflater f19805b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f19806c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bundle f19807d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ a f19808e;

    public g(x4.i iVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f19808e = iVar;
        this.f19804a = frameLayout;
        this.f19805b = layoutInflater;
        this.f19806c = viewGroup;
        this.f19807d = bundle;
    }

    @Override // z3.k
    public final void a() {
        FrameLayout frameLayout = this.f19804a;
        frameLayout.removeAllViews();
        c cVar = this.f19808e.f19793a;
        LayoutInflater layoutInflater = this.f19805b;
        ViewGroup viewGroup = this.f19806c;
        Bundle bundle = this.f19807d;
        x4.h hVar = (x4.h) cVar;
        hVar.getClass();
        try {
            Bundle bundle2 = new Bundle();
            y4.i.b(bundle, bundle2);
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
            try {
                b bVarM0 = hVar.f19143b.m0(new d(layoutInflater), new d(viewGroup), bundle2);
                StrictMode.setThreadPolicy(threadPolicy);
                y4.i.b(bundle2, bundle);
                frameLayout.addView((View) d.y0(bVarM0));
            } catch (Throwable th2) {
                StrictMode.setThreadPolicy(threadPolicy);
                throw th2;
            }
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    @Override // z3.k
    public final int b() {
        return 2;
    }
}
