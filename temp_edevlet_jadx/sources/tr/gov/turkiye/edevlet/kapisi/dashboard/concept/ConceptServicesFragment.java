package tr.gov.turkiye.edevlet.kapisi.dashboard.concept;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import java.util.List;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ConceptServiceListUIController;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ConceptServicesFragment extends ee.a implements ConceptServiceListUIController.a {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16203h = {androidx.room.util.a.b(ConceptServicesFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesViewModel;"), androidx.room.util.a.b(ConceptServicesFragment.class, "mEditorServiceFragmentBinding", "getMEditorServiceFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16204a;

    /* renamed from: b, reason: collision with root package name */
    public final e f16205b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16206c;

    /* renamed from: d, reason: collision with root package name */
    public ConceptServiceListUIController f16207d;

    /* renamed from: e, reason: collision with root package name */
    public ConceptServiceModelRealm f16208e;
    public List<? extends ConceptServiceModelRealm> f;

    /* renamed from: g, reason: collision with root package name */
    public Context f16209g;

    public static final class a extends j implements l<of.c, l9.m> {
        public a() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // x9.l
        public final l9.m invoke(of.c cVar) {
            List list;
            of.c state = cVar;
            h.f(state, "state");
            r0.b<Result<List<ConceptServiceModelRealm>>> bVar = state.f11319a;
            int r22 = 1;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            ConceptServicesFragment conceptServicesFragment = ConceptServicesFragment.this;
            if (z10) {
                m<Object>[] mVarArr = ConceptServicesFragment.f16203h;
                conceptServicesFragment.E().f16248e.setVisibility(8);
                conceptServicesFragment.E().f16246c.f15873a.setVisibility(8);
                conceptServicesFragment.E().f.f15878a.setVisibility(8);
                conceptServicesFragment.E().f16247d.setVisibility(0);
            } else if (bVar instanceof c1) {
                m<Object>[] mVarArr2 = ConceptServicesFragment.f16203h;
                conceptServicesFragment.getClass();
                List list2 = state.f11320b;
                List list3 = list2;
                if (list3 != null && !list3.isEmpty()) {
                    r22 = 0;
                }
                if (r22 == 0) {
                    conceptServicesFragment.E().f16247d.setVisibility(8);
                    conceptServicesFragment.E().f.f15878a.setVisibility(8);
                    conceptServicesFragment.E().f16246c.f15873a.setVisibility(8);
                    conceptServicesFragment.E().f16248e.setVisibility(0);
                    ConceptServiceListUIController conceptServiceListUIController = conceptServicesFragment.f16207d;
                    if (conceptServiceListUIController == null) {
                        conceptServicesFragment.f16207d = new ConceptServiceListUIController(conceptServicesFragment);
                        EpoxyRecyclerView epoxyRecyclerView = conceptServicesFragment.E().f16248e;
                        ConceptServiceListUIController conceptServiceListUIController2 = conceptServicesFragment.f16207d;
                        if (conceptServiceListUIController2 == null) {
                            h.n("mServiceController");
                            throw null;
                        }
                        epoxyRecyclerView.setController(conceptServiceListUIController2);
                        conceptServicesFragment.f = list2;
                        conceptServiceListUIController = conceptServicesFragment.f16207d;
                        list = list2;
                        if (conceptServiceListUIController == null) {
                            h.n("mServiceController");
                            throw null;
                        }
                    } else if (conceptServicesFragment.f16208e != null) {
                        List list4 = conceptServicesFragment.f;
                        list = list4;
                        if (list4 == null) {
                            h.n("mServiceList");
                            throw null;
                        }
                    }
                    conceptServiceListUIController.setData(list);
                } else {
                    conceptServicesFragment.F();
                }
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                m<Object>[] mVarArr3 = ConceptServicesFragment.f16203h;
                conceptServicesFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    conceptServicesFragment.startActivity(intentB);
                    FragmentActivity activity = conceptServicesFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    conceptServicesFragment.F();
                } else if (th2 instanceof NetworkErrorException) {
                    conceptServicesFragment.E().f16248e.setVisibility(8);
                    conceptServicesFragment.E().f16247d.setVisibility(8);
                    conceptServicesFragment.E().f.f15878a.setVisibility(8);
                    conceptServicesFragment.E().f16246c.f15873a.setVisibility(0);
                    conceptServicesFragment.E().f16246c.f15874b.setOnClickListener(new be.d(r22, conceptServicesFragment));
                } else {
                    conceptServicesFragment.E().f16248e.setVisibility(8);
                    conceptServicesFragment.E().f16247d.setVisibility(8);
                    conceptServicesFragment.E().f16246c.f15873a.setVisibility(8);
                    conceptServicesFragment.E().f.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentServiceListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16211a = new b();

        public b() {
            super(1, FragmentServiceListBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;", 0);
        }

        @Override // x9.l
        public final FragmentServiceListBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentServiceListBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<of.d, of.c>, of.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16212a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16213b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16214c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16212a = fragment;
            this.f16213b = dVar;
            this.f16214c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [of.d, r0.z] */
        @Override // x9.l
        public final of.d invoke(q<of.d, of.c> qVar) {
            q<of.d, of.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16213b);
            Fragment fragment = this.f16212a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16214c, clsQ, of.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16215a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16216b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16217c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16215a = dVar;
            this.f16216b = cVar;
            this.f16217c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16215a, new tr.gov.turkiye.edevlet.kapisi.dashboard.concept.a(this), w.a(of.c.class), this.f16216b);
        }
    }

    public ConceptServicesFragment() {
        super(R.layout.fragment_service_list);
        da.d dVarA = w.a(of.d.class);
        this.f16205b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16203h[0]);
        this.f16206c = d0.C(this, b.f16211a);
    }

    public final FragmentServiceListBinding E() {
        return (FragmentServiceListBinding) this.f16206c.a(this, f16203h[1]);
    }

    public final void F() {
        E().f16248e.setVisibility(8);
        E().f16247d.setVisibility(8);
        E().f16246c.f15873a.setVisibility(8);
        E().f.f15878a.setVisibility(0);
        E().f.f15881d.setText(getString(R.string.no_content_found_title));
        E().f.f15880c.setText(getString(R.string.no_content_found_content));
        ImageView imageView = E().f.f15879b;
        h.e(imageView, "mEditorServiceFragmentBi…ystemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    public final void G(boolean z10, boolean z11) {
        Context context = this.f16209g;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r02 = ke.d.f8929a;
            ConstraintLayout constraintLayout = E().f16245b;
            h.e(constraintLayout, "mEditorServiceFragmentBinding.containerList");
            ke.d dVarA = d.a.a(constraintLayout, R.string.service_error_info, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
            if (dVarA != null) {
                dVarA.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((of.d) this.f16205b.getValue(), new a());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ConceptServiceListUIController.a
    public final void j(ConceptServiceModelRealm service) {
        h.f(service, "service");
        gf.b bVar = this.f16204a;
        if (bVar != null) {
            if (!bVar.a()) {
                Context context = this.f16209g;
                if (context != null) {
                    FragmentActivity activity = getActivity();
                    View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                    int r12 = ke.d.f8929a;
                    ConstraintLayout constraintLayout = E().f16245b;
                    h.e(constraintLayout, "mEditorServiceFragmentBinding.containerList");
                    ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
                    if (dVarE != null) {
                        dVarE.show();
                        return;
                    }
                    return;
                }
                return;
            }
            this.f16208e = service;
            Intent intentA = oe.a.a(service);
            if (intentA != null) {
                startActivity(intentA);
                return;
            }
        }
        G(true, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16209g = view.getContext();
    }
}
