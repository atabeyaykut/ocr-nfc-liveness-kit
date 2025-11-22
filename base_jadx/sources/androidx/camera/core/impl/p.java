package androidx.camera.core.impl;

import a7.a;
import android.os.Bundle;
import android.util.Log;
import androidx.camera.extensions.ExtensionsManager;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.fragment.app.FragmentKt;
import androidx.fragment.app.FragmentResultListener;
import io.realm.g0;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements CallbackToFutureAdapter.Resolver, FragmentResultListener, a.InterfaceC0008a, g0.a, h5.e, h5.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f717a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f718b;

    public /* synthetic */ p(int r12, Object obj) {
        this.f717a = r12;
        this.f718b = obj;
    }

    @Override // a7.a.InterfaceC0008a
    public final void a(a7.b bVar) {
        d6.a aVar = (d6.a) this.f718b;
        aVar.getClass();
        c5.y yVar = c5.y.f2129g;
        yVar.l("AnalyticsConnector now available.");
        z5.a aVar2 = (z5.a) bVar.get();
        f6.e eVar = new f6.e(aVar2);
        d6.b bVar2 = new d6.b();
        z5.b bVarB = aVar2.b("clx", bVar2);
        if (bVarB == null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Could not register AnalyticsConnectorListener with Crashlytics origin.", null);
            }
            z5.b bVarB2 = aVar2.b("crash", bVar2);
            if (bVarB2 != null) {
                Log.w("FirebaseCrashlytics", "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.", null);
            }
            bVarB = bVarB2;
        }
        if (bVarB == null) {
            yVar.F("Could not register Firebase Analytics listener; a listener is already registered.", null);
            return;
        }
        yVar.l("Registered Firebase Analytics listener.");
        f6.d dVar = new f6.d();
        f6.c cVar = new f6.c(eVar, TimeUnit.MILLISECONDS);
        synchronized (aVar) {
            Iterator it = aVar.f4667c.iterator();
            while (it.hasNext()) {
                dVar.a((g6.a) it.next());
            }
            bVar2.f4669b = dVar;
            bVar2.f4668a = cVar;
            aVar.f4666b = dVar;
            aVar.f4665a = cVar;
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f717a;
        Object obj = this.f718b;
        switch (r02) {
            case 0:
                return ((DeferrableSurface) obj).lambda$new$0(completer);
            default:
                return ((ExtensionsManager) obj).lambda$shutdown$1(completer);
        }
    }

    @Override // h5.e
    public final void b(h5.k task) {
        ServicePageActivity this$0 = (ServicePageActivity) this.f718b;
        int r12 = ServicePageActivity.s0;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(task, "task");
        if (task.m()) {
            this$0.K = (String) task.i();
        }
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        int r02 = this.f717a;
        Object obj = this.f718b;
        switch (r02) {
            case 4:
                ServiceModelRealm serviceToBeInserted = (ServiceModelRealm) obj;
                da.m<Object>[] mVarArr = SearchFragment.f16707s;
                kotlin.jvm.internal.h.f(serviceToBeInserted, "$serviceToBeInserted");
                g0Var.B(serviceToBeInserted);
                break;
            default:
                List cityListDB = (List) obj;
                kotlin.jvm.internal.h.f(cityListDB, "$cityListDB");
                g0Var.E(cityListDB);
                break;
        }
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public final void onFragmentResult(String str, Bundle bundle) {
        FragmentKt.m15setFragmentResultListener$lambda0((x9.p) this.f718b, str, bundle);
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        x9.l tmp0 = (x9.l) this.f718b;
        da.m<Object>[] mVarArr = MobileAccidentIntroductionFragment.f17319g;
        kotlin.jvm.internal.h.f(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
