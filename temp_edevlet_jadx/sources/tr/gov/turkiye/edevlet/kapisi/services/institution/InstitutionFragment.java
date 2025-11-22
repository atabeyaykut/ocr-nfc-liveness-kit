package tr.gov.turkiye.edevlet.kapisi.services.institution;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import c5.b4;
import c5.w;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.transition.MaterialFadeThrough;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.FragmentInstitutionBinding;
import ug.b;
import ug.c;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;", "Lee/a;", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InstitutionFragment extends ee.a {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16894d = {androidx.room.util.a.b(InstitutionFragment.class, "mInstitutionFragmentBinding", "getMInstitutionFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public FirebaseAnalytics f16895a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16896b;

    /* renamed from: c, reason: collision with root package name */
    public Context f16897c;

    public /* synthetic */ class a extends g implements l<View, FragmentInstitutionBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16898a = new a();

        public a() {
            super(1, FragmentInstitutionBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;", 0);
        }

        @Override // x9.l
        public final FragmentInstitutionBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentInstitutionBinding.bind(p02);
        }
    }

    public InstitutionFragment() {
        super(R.layout.fragment_institution);
        this.f16896b = d0.C(this, a.f16898a);
    }

    public final void E(c cVar) {
        String str = cVar != null ? "MunicipalityCity_Screen" : "Services_Screen";
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16895a;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("screen_name", str);
            b4Var.d("screen_class", "InstitutionFragment");
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
        } catch (Exception unused) {
        }
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setEnterTransition(new MaterialFadeThrough());
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        E(null);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        EpoxyRecyclerView epoxyRecyclerView;
        GridLayoutManager gridLayoutManager;
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16897c = view.getContext();
        boolean z10 = getResources().getBoolean(R.bool.isTablet);
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.f16896b;
        m<?>[] mVarArr = f16894d;
        if (z10) {
            epoxyRecyclerView = ((FragmentInstitutionBinding) fragmentViewBindingDelegate.a(this, mVarArr[0])).f16849b;
            gridLayoutManager = new GridLayoutManager(this.f16897c, 3);
        } else {
            epoxyRecyclerView = ((FragmentInstitutionBinding) fragmentViewBindingDelegate.a(this, mVarArr[0])).f16849b;
            gridLayoutManager = new GridLayoutManager(this.f16897c, 2);
        }
        epoxyRecyclerView.setLayoutManager(gridLayoutManager);
        ((FragmentInstitutionBinding) fragmentViewBindingDelegate.a(this, mVarArr[0])).f16849b.h(new b(this));
    }
}
