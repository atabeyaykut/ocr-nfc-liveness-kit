package androidx.camera.camera2.interop;

import android.database.Cursor;
import android.os.Bundle;
import androidx.camera.core.internal.YuvToJpegProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import b3.r;
import c3.b;
import da.m;
import h5.k;
import h5.l;
import h6.p0;
import io.realm.g0;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;
import y2.c;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements CallbackToFutureAdapter.Resolver, b.a, r.a, f6.a, h5.b, g0.a, h5.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f654a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f655b;

    public /* synthetic */ d(int r12, Object obj) {
        this.f654a = r12;
        this.f655b = obj;
    }

    @Override // f6.a
    public final void a(Bundle bundle) {
        ((d6.a) this.f655b).f4665a.a(bundle);
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        r rVar = (r) this.f655b;
        Cursor cursor = (Cursor) obj;
        r2.b bVar = r.f;
        rVar.getClass();
        while (cursor.moveToNext()) {
            rVar.c(cursor.getInt(0), c.a.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f654a;
        Object obj = this.f655b;
        switch (r02) {
            case 0:
                return ((Camera2CameraControl) obj).lambda$addCaptureRequestOptions$4(completer);
            default:
                return ((YuvToJpegProcessor) obj).lambda$getCloseFuture$0(completer);
        }
    }

    @Override // h5.b
    public final Object c(k kVar) {
        l lVar = (l) this.f655b;
        ExecutorService executorService = p0.f6951a;
        if (kVar.m()) {
            lVar.d(kVar.i());
            return null;
        }
        Exception excH = kVar.h();
        Objects.requireNonNull(excH);
        lVar.c(excH);
        return null;
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        g0 g0Var2 = (g0) this.f655b;
        m<Object>[] mVarArr = MyCityListFragment.f16381k;
        g0Var2.r(MyCityListDBModel.class);
    }

    @Override // c3.b.a
    public final Object execute() {
        return ((b3.c) this.f655b).b();
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        x9.l tmp0 = (x9.l) this.f655b;
        kotlin.jvm.internal.h.f(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
