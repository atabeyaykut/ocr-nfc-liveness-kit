package z3;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMapOptions;

/* loaded from: classes.dex */
public final class e implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f19798a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f19799b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bundle f19800c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a f19801d;

    public e(x4.i iVar, Activity activity, Bundle bundle, Bundle bundle2) {
        this.f19801d = iVar;
        this.f19798a = activity;
        this.f19799b = bundle;
        this.f19800c = bundle2;
    }

    @Override // z3.k
    public final void a() {
        c cVar = this.f19801d.f19793a;
        Activity activity = this.f19798a;
        Bundle bundle = this.f19800c;
        x4.h hVar = (x4.h) cVar;
        hVar.getClass();
        GoogleMapOptions googleMapOptions = (GoogleMapOptions) this.f19799b.getParcelable("MapOptions");
        try {
            Bundle bundle2 = new Bundle();
            y4.i.b(bundle, bundle2);
            hVar.f19143b.O(new d(activity), googleMapOptions, bundle2);
            y4.i.b(bundle2, bundle);
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    @Override // z3.k
    public final int b() {
        return 0;
    }
}
