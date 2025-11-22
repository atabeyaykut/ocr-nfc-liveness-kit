package androidx.camera.lifecycle;

import androidx.camera.core.CameraX;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.navigation.fragment.FragmentKt;
import c3.b;
import da.m;
import io.realm.g0;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;
import u2.s;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements CallbackToFutureAdapter.Resolver, b.a, g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f831a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f832b;

    public /* synthetic */ d(Object obj, Object obj2) {
        this.f831a = obj;
        this.f832b = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((ProcessCameraProvider) this.f831a).lambda$getOrCreateCameraXInstance$2((CameraX) this.f832b, completer);
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        g0 g0Var2 = (g0) this.f831a;
        MyCityListFragment this$0 = (MyCityListFragment) this.f832b;
        m<Object>[] mVarArr = MyCityListFragment.f16381k;
        h.f(this$0, "this$0");
        g0Var2.r(MyCityListDBModel.class);
        for (tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar : this$0.f16386e) {
            MyCityListDBModel myCityListDBModel = new MyCityListDBModel();
            Integer num = bVar.f;
            h.c(num);
            myCityListDBModel.setCityId(num.intValue());
            String str = bVar.f16399e;
            h.c(str);
            myCityListDBModel.setCityName(str);
            g0Var.B(myCityListDBModel);
        }
        FragmentKt.findNavController(this$0).popBackStack(tr.gov.turkiye.edevlet.kapisi.R.id.myCityListFragment, true);
        FragmentKt.findNavController(this$0).navigate(tr.gov.turkiye.edevlet.kapisi.R.id.myCityDetailFragment);
    }

    @Override // c3.b.a
    public final Object execute() {
        a3.m mVar = (a3.m) this.f831a;
        return mVar.f86c.R((s) this.f832b);
    }
}
