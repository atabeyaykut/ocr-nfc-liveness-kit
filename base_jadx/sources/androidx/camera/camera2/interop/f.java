package androidx.camera.camera2.interop;

import android.database.Cursor;
import androidx.camera.view.CameraController;
import androidx.camera.view.RotationProvider;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import b3.r;
import da.m;
import io.realm.g0;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.DashboardFragment;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;
import x9.l;
import y2.c;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements CallbackToFutureAdapter.Resolver, RotationProvider.Listener, r.a, h5.g, g0.a, h5.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f657a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f658b;

    public /* synthetic */ f(int r12, Object obj) {
        this.f657a = r12;
        this.f658b = obj;
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        r rVar = (r) this.f658b;
        Cursor cursor = (Cursor) obj;
        r2.b bVar = r.f;
        rVar.getClass();
        while (cursor.moveToNext()) {
            rVar.c(cursor.getInt(0), c.a.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((Camera2CameraControl) this.f658b).lambda$setCaptureRequestOptions$2(completer);
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        int r02 = this.f657a;
        Object obj = this.f658b;
        switch (r02) {
            case 4:
                InfoMessageModelRealm infoMessageModel = (InfoMessageModelRealm) obj;
                m<Object>[] mVarArr = DashboardFragment.f16156k;
                kotlin.jvm.internal.h.f(infoMessageModel, "$infoMessageModel");
                g0Var.B(infoMessageModel);
                break;
            default:
                ((ServiceModelRealm) obj).setFavorite(true);
                break;
        }
    }

    @Override // h5.f
    public final void e(Exception exc) {
        MobileAccidentIntroductionFragment this$0 = (MobileAccidentIntroductionFragment) this.f658b;
        m<Object>[] mVarArr = MobileAccidentIntroductionFragment.f17319g;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(exc, "<anonymous parameter 0>");
        this$0.H(R.string.mkt_introduction_page_location_general_error);
    }

    @Override // androidx.camera.view.RotationProvider.Listener
    public final void onRotationChanged(int r22) {
        ((CameraController) this.f658b).lambda$new$1(r22);
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        l tmp0 = (l) this.f658b;
        kotlin.jvm.internal.h.f(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
