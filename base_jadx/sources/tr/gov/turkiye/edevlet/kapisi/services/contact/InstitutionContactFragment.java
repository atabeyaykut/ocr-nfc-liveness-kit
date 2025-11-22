package tr.gov.turkiye.edevlet.kapisi.services.contact;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.transition.MaterialSharedAxis;
import da.m;
import ge.b;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.ArrayList;
import java.util.List;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import m9.t;
import rg.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.FragmentInstitutionContactBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;", "Lee/a;", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InstitutionContactFragment extends ee.a {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16844c = {androidx.room.util.a.b(InstitutionContactFragment.class, "mInstitutionContactFragmentBinding", "getMInstitutionContactFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionContactBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16845a;

    /* renamed from: b, reason: collision with root package name */
    public Context f16846b;

    public /* synthetic */ class a extends g implements l<View, FragmentInstitutionContactBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16847a = new a();

        public a() {
            super(1, FragmentInstitutionContactBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionContactBinding;", 0);
        }

        @Override // x9.l
        public final FragmentInstitutionContactBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentInstitutionContactBinding.bind(p02);
        }
    }

    public InstitutionContactFragment() {
        super(R.layout.fragment_institution_contact);
        this.f16845a = d0.C(this, a.f16847a);
    }

    public final FragmentInstitutionContactBinding E() {
        return (FragmentInstitutionContactBinding) this.f16845a.a(this, f16844c[0]);
    }

    public final void F(int r6) {
        Context context = this.f16846b;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = d.f8929a;
            ConstraintLayout constraintLayout = E().f16856b;
            h.e(constraintLayout, "mInstitutionContactFragm…tBinding.contactContainer");
            d dVarE = d.a.e(constraintLayout, r6, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MaterialSharedAxis materialSharedAxis = new MaterialSharedAxis(2, true);
        materialSharedAxis.setDuration(getResources().getInteger(R.integer.app_motion_duration_large));
        setEnterTransition(materialSharedAxis);
        MaterialSharedAxis materialSharedAxis2 = new MaterialSharedAxis(2, false);
        materialSharedAxis2.setDuration(getResources().getInteger(R.integer.app_motion_duration_large));
        setReturnTransition(materialSharedAxis2);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16846b = view.getContext();
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("institutionCode")) : null;
        g0 g0VarT = g0.t();
        h.e(g0VarT, "getDefaultInstance()");
        RealmQuery realmQueryJ = g0VarT.J(InstitutionContactModelRealm.class);
        realmQueryJ.b(numValueOf, "institutionCode");
        List listV1 = t.v1(realmQueryJ.d());
        g0 g0VarT2 = g0.t();
        h.e(g0VarT2, "getDefaultInstance()");
        RealmQuery realmQueryJ2 = g0VarT2.J(InstitutionModelRealm.class);
        realmQueryJ2.b(numValueOf, "institutionCode");
        InstitutionModelRealm institutionModelRealm = (InstitutionModelRealm) realmQueryJ2.e();
        E().f16859e.setText(institutionModelRealm != null ? institutionModelRealm.getInstitutionName() : null);
        ImageView imageView = E().f16857c;
        h.e(imageView, "mInstitutionContactFragm…ing.institutionDetailLogo");
        b.c(imageView, institutionModelRealm != null ? institutionModelRealm.getIconName() : null);
        if (!listV1.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : listV1) {
                if (((InstitutionContactModelRealm) obj).isMainInstitution()) {
                    arrayList.add(obj);
                } else {
                    arrayList2.add(obj);
                }
            }
            E().f16858d.h(new f(t.m1(arrayList2, arrayList), this));
        }
    }
}
