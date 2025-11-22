package tr.gov.turkiye.edevlet.kapisi.services.firm;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import c5.b4;
import c5.w;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import tg.b;
import tg.c;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.FragmentInstitutionBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;", "Lee/a;", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class FirmCategoryListFragment extends ee.a {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16890c = {androidx.room.util.a.b(FirmCategoryListFragment.class, "mInstitutionFragmentBinding", "getMInstitutionFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public FirebaseAnalytics f16891a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16892b;

    public /* synthetic */ class a extends g implements l<View, FragmentInstitutionBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16893a = new a();

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

    public FirmCategoryListFragment() {
        super(R.layout.fragment_institution);
        this.f16892b = d0.C(this, a.f16893a);
    }

    public final void E(c cVar) {
        String str;
        if (cVar == null) {
            str = "Firm_Screen";
        } else {
            try {
                switch (cVar.f15720c) {
                    case 1:
                        str = "NaturalGasCity_Screen";
                        break;
                    case 2:
                        str = "ElectricCity_Screen";
                        break;
                    case 3:
                        str = "TelecommunicationInstitution_Screen";
                        break;
                    case 4:
                        str = "MobileLineInstitution_Screen";
                        break;
                    case 5:
                        str = "WaterAndSewageCity_Screen";
                        break;
                    case 6:
                        str = "OtherInstitution_Screen";
                        break;
                    default:
                        str = "Firm_Screen";
                        break;
                }
            } catch (Exception unused) {
                return;
            }
        }
        FirebaseAnalytics firebaseAnalytics = this.f16891a;
        if (firebaseAnalytics == null) {
            h.n("firebaseAnalytics");
            throw null;
        }
        b4 b4Var = new b4(2, 0);
        b4Var.d("screen_name", str);
        b4Var.d("screen_class", "FirmCategoryListFragment");
        firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
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
        boolean z10 = getResources().getBoolean(R.bool.isTablet);
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.f16892b;
        m<?>[] mVarArr = f16890c;
        if (z10) {
            epoxyRecyclerView = ((FragmentInstitutionBinding) fragmentViewBindingDelegate.a(this, mVarArr[0])).f16849b;
            gridLayoutManager = new GridLayoutManager(null, 3);
        } else {
            epoxyRecyclerView = ((FragmentInstitutionBinding) fragmentViewBindingDelegate.a(this, mVarArr[0])).f16849b;
            gridLayoutManager = new GridLayoutManager(null, 2);
        }
        epoxyRecyclerView.setLayoutManager(gridLayoutManager);
        ((FragmentInstitutionBinding) fragmentViewBindingDelegate.a(this, mVarArr[0])).f16849b.h(new b(this));
    }
}
