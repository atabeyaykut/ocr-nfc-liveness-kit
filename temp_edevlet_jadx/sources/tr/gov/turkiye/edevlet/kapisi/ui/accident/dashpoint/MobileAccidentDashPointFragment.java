package tr.gov.turkiye.edevlet.kapisi.ui.accident.dashpoint;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import b8.f;
import c5.u;
import c5.v;
import ch.k;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import io.realm.g0;
import java.util.ArrayList;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import m9.t;
import nc.a0;
import r0.c1;
import r0.d1;
import r0.i;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DashPointSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.dashpoint.MobileAccidentDashPointFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentDashPointBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentDashPointFragment extends ee.a {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17047j = {androidx.room.util.a.b(MobileAccidentDashPointFragment.class, "mDashPointBinding", "getMDashPointBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;"), androidx.room.util.a.b(MobileAccidentDashPointFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17048a;

    /* renamed from: b, reason: collision with root package name */
    public final e f17049b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17050c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17051d;

    /* renamed from: e, reason: collision with root package name */
    public ch.a f17052e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public String f17053g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f17054h;

    public static final class a extends j implements l<k, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(k kVar) {
            NavController navControllerFindNavController;
            int r02;
            v.e eVar;
            k state = kVar;
            h.f(state, "state");
            r0.b<Result<DashPointSaveModel>> bVar = state.f2444a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentDashPointFragment mobileAccidentDashPointFragment = MobileAccidentDashPointFragment.this;
            if (z10) {
                if (mobileAccidentDashPointFragment.f && (eVar = mobileAccidentDashPointFragment.f17050c) != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                v.e eVar2 = mobileAccidentDashPointFragment.f17050c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                if (mobileAccidentDashPointFragment.f) {
                    mobileAccidentDashPointFragment.f = false;
                    if (h.a(mobileAccidentDashPointFragment.f17053g, "HOST")) {
                        navControllerFindNavController = FragmentKt.findNavController(mobileAccidentDashPointFragment);
                        r02 = R.id.mktScanQRFragment;
                    } else {
                        navControllerFindNavController = FragmentKt.findNavController(mobileAccidentDashPointFragment);
                        r02 = R.id.mktGenerateQRFragment;
                    }
                    navControllerFindNavController.navigate(r02);
                }
                yd.a.f19652a.c("Success Dashpoint", new Object[0]);
            } else if (bVar instanceof i) {
                yd.a.f19652a.c("Fail Dashpoint", new Object[0]);
                v.e eVar3 = mobileAccidentDashPointFragment.f17050c;
                if (eVar3 != null) {
                    eVar3.dismiss();
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentDashPointBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17056a = new b();

        public b() {
            super(1, FragmentDashPointBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;", 0);
        }

        @Override // x9.l
        public final FragmentDashPointBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentDashPointBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<ch.l, k>, ch.l> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17057a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17058b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17059c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17057a = fragment;
            this.f17058b = dVar;
            this.f17059c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [ch.l, r0.z] */
        @Override // x9.l
        public final ch.l invoke(q<ch.l, k> qVar) {
            q<ch.l, k> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17058b);
            Fragment fragment = this.f17057a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17059c, clsQ, k.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17060a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17061b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17062c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f17060a = dVar;
            this.f17061b = cVar;
            this.f17062c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17060a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.dashpoint.a(this), w.a(k.class), this.f17061b);
        }
    }

    public MobileAccidentDashPointFragment() {
        super(R.layout.fragment_dash_point);
        this.f17048a = d0.C(this, b.f17056a);
        da.d dVarA = w.a(ch.l.class);
        this.f17049b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f17047j[1]);
        this.f17054h = f.Y(new ch.a("FRONT", "Ön", false, R.id.img_front_point), new ch.a("FRONT_LEFT", "Ön Sol", false, R.id.img_front_left_point), new ch.a("FRONT_RIGHT", "Ön Sağ", false, R.id.img_front_right_point), new ch.a("RIGHT_FRONT", "Sağ Ön", false, R.id.img_right_front_point), new ch.a("RIGHT_FRONT_DOOR", "Sağ Ön Kapı", false, R.id.img_right_front_door_point), new ch.a("RIGHT_MIDDLE", "Sağ Orta", false, R.id.img_right_middle_point), new ch.a("RIGHT_BACK_DOOR", "Sağ Arka Kapı", false, R.id.img_right_back_door_point), new ch.a("RIGHT_BACK", "Sağ Arka", false, R.id.img_right_back_point), new ch.a("BACK_RIGHT", "Arka Sağ", false, R.id.img_back_right_point), new ch.a("BACK", "Arka", false, R.id.img_back_point), new ch.a("BACK_LEFT", "Arka Sol", false, R.id.img_back_left_point), new ch.a("LEFT_BACK", "Sol Arka", false, R.id.img_left_back_point), new ch.a("LEFT_BACK_DOOR", "Sol Arka Kapı", false, R.id.img_left_back_door_point), new ch.a("LEFT_MIDDLE", "Sol Orta", false, R.id.img_left_middle_point), new ch.a("LEFT_FRONT_DOOR", "Sol Ön Kapı", false, R.id.img_left_front_door_point), new ch.a("LEFT_FRONT", "Sol Ön", false, R.id.img_left_front_point));
    }

    public final FragmentDashPointBinding E() {
        return (FragmentDashPointBinding) this.f17048a.a(this, f17047j[0]);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((ch.l) this.f17049b.getValue(), new a());
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
        this.f17051d = view.getContext();
        final int r02 = 0;
        E().f17103h.setOnClickListener(new View.OnClickListener(this) { // from class: ch.c

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2421b;

            {
                this.f2421b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r12 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2421b;
                switch (r12) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_front_point) {
                                this$0.E().f17103h.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_front_right_point) {
                                this$0.E().f17104i.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        final int r12 = 1;
        E().f17102g.setOnClickListener(new View.OnClickListener(this) { // from class: ch.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2419b;

            {
                this.f2419b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r13 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2419b;
                switch (r13) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        this$0.f = true;
                        a aVar = this$0.f17052e;
                        if (aVar != null) {
                            l lVar = (l) this$0.f17049b.getValue();
                            lVar.getClass();
                            String dashPoint = aVar.f2415b;
                            kotlin.jvm.internal.h.f(dashPoint, "dashPoint");
                            m mVar = new m(lVar, dashPoint, null);
                            a0 a0Var = lVar.f13883c;
                            v.C(a0Var, null, 0, mVar, 3);
                            v.D(a0Var, lVar.f2446h, new n(lVar, null));
                            break;
                        } else {
                            Context context = this$0.f17051d;
                            if (context != null) {
                                int r03 = ke.d.f8929a;
                                NestedScrollView nestedScrollView = this$0.E().f17115t;
                                kotlin.jvm.internal.h.e(nestedScrollView, "mDashPointBinding.mktDashPointParentContainer");
                                ke.d dVarE = d.a.e(nestedScrollView, R.string.mkt_dash_point_no_selection_warning, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
                                if (dVarE != null) {
                                    dVarE.show();
                                    break;
                                }
                            }
                        }
                        break;
                    case 1:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar2 : arrayList) {
                            if (aVar2.f2414a == R.id.img_front_left_point) {
                                this$0.E().f17102g.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar2, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar2, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr3 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar3 : arrayList3) {
                            if (aVar3.f2414a == R.id.img_back_point) {
                                this$0.E().f17101e.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar3, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar3.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar3, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17104i.setOnClickListener(new View.OnClickListener(this) { // from class: ch.c

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2421b;

            {
                this.f2421b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r122 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2421b;
                switch (r122) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_front_point) {
                                this$0.E().f17103h.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_front_right_point) {
                                this$0.E().f17104i.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17113r.setOnClickListener(new View.OnClickListener(this) { // from class: ch.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2423b;

            {
                this.f2423b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r13 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2423b;
                switch (r13) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_back_left_point) {
                                this$0.E().f17100d.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_front_point) {
                                this$0.E().f17113r.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17112q.setOnClickListener(new View.OnClickListener(this) { // from class: ch.e

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2425b;

            {
                this.f2425b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r13 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2425b;
                switch (r13) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_back_point) {
                                this$0.E().f17106k.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_front_door_point) {
                                this$0.E().f17112q.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17114s.setOnClickListener(new View.OnClickListener(this) { // from class: ch.f

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2427b;

            {
                this.f2427b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r13 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2427b;
                switch (r13) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_back_door_point) {
                                this$0.E().f17105j.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_middle_point) {
                                this$0.E().f17114s.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17110o.setOnClickListener(new View.OnClickListener(this) { // from class: ch.g

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2429b;

            {
                this.f2429b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r13 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2429b;
                switch (r13) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_middle_point) {
                                this$0.E().f17109n.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_back_door_point) {
                                this$0.E().f17110o.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17111p.setOnClickListener(new View.OnClickListener(this) { // from class: ch.h

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2431b;

            {
                this.f2431b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r13 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2431b;
                switch (r13) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_front_door_point) {
                                this$0.E().f17107l.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_back_point) {
                                this$0.E().f17111p.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f.setOnClickListener(new View.OnClickListener(this) { // from class: ch.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2433b;

            {
                this.f2433b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r13 = r12;
                MobileAccidentDashPointFragment this$0 = this.f2433b;
                switch (r13) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_front_point) {
                                this$0.E().f17108m.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_back_right_point) {
                                this$0.E().f.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        final int r13 = 2;
        E().f17101e.setOnClickListener(new View.OnClickListener(this) { // from class: ch.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2419b;

            {
                this.f2419b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r13;
                MobileAccidentDashPointFragment this$0 = this.f2419b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        this$0.f = true;
                        a aVar = this$0.f17052e;
                        if (aVar != null) {
                            l lVar = (l) this$0.f17049b.getValue();
                            lVar.getClass();
                            String dashPoint = aVar.f2415b;
                            kotlin.jvm.internal.h.f(dashPoint, "dashPoint");
                            m mVar = new m(lVar, dashPoint, null);
                            a0 a0Var = lVar.f13883c;
                            v.C(a0Var, null, 0, mVar, 3);
                            v.D(a0Var, lVar.f2446h, new n(lVar, null));
                            break;
                        } else {
                            Context context = this$0.f17051d;
                            if (context != null) {
                                int r03 = ke.d.f8929a;
                                NestedScrollView nestedScrollView = this$0.E().f17115t;
                                kotlin.jvm.internal.h.e(nestedScrollView, "mDashPointBinding.mktDashPointParentContainer");
                                ke.d dVarE = d.a.e(nestedScrollView, R.string.mkt_dash_point_no_selection_warning, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
                                if (dVarE != null) {
                                    dVarE.show();
                                    break;
                                }
                            }
                        }
                        break;
                    case 1:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar2 : arrayList) {
                            if (aVar2.f2414a == R.id.img_front_left_point) {
                                this$0.E().f17102g.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar2, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar2, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr3 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar3 : arrayList3) {
                            if (aVar3.f2414a == R.id.img_back_point) {
                                this$0.E().f17101e.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar3, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar3.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar3, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17100d.setOnClickListener(new View.OnClickListener(this) { // from class: ch.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2423b;

            {
                this.f2423b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2423b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_back_left_point) {
                                this$0.E().f17100d.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_front_point) {
                                this$0.E().f17113r.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17106k.setOnClickListener(new View.OnClickListener(this) { // from class: ch.e

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2425b;

            {
                this.f2425b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2425b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_back_point) {
                                this$0.E().f17106k.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_front_door_point) {
                                this$0.E().f17112q.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17105j.setOnClickListener(new View.OnClickListener(this) { // from class: ch.f

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2427b;

            {
                this.f2427b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2427b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_back_door_point) {
                                this$0.E().f17105j.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_middle_point) {
                                this$0.E().f17114s.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17109n.setOnClickListener(new View.OnClickListener(this) { // from class: ch.g

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2429b;

            {
                this.f2429b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2429b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_middle_point) {
                                this$0.E().f17109n.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_back_door_point) {
                                this$0.E().f17110o.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17107l.setOnClickListener(new View.OnClickListener(this) { // from class: ch.h

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2431b;

            {
                this.f2431b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2431b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_front_door_point) {
                                this$0.E().f17107l.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_right_back_point) {
                                this$0.E().f17111p.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        E().f17108m.setOnClickListener(new View.OnClickListener(this) { // from class: ch.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2433b;

            {
                this.f2433b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2433b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar : arrayList) {
                            if (aVar.f2414a == R.id.img_left_front_point) {
                                this$0.E().f17108m.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar2 : arrayList3) {
                            if (aVar2.f2414a == R.id.img_back_right_point) {
                                this$0.E().f.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar2, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar2, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
        Context context = this.f17051d;
        if (context != null) {
            Object systemService = context.getSystemService("layout_inflater");
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            Context context2 = this.f17051d;
            h.c(context2);
            v.e eVar = new v.e(context2);
            this.f17050c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17050c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        g0 g0VarT = g0.t();
        g0VarT.m();
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
        if (mKTAccidentReport != null) {
            this.f17053g = mKTAccidentReport.getRole();
        }
        E().f17098b.setOnClickListener(new View.OnClickListener(this) { // from class: ch.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MobileAccidentDashPointFragment f2419b;

            {
                this.f2419b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a aVarA;
                a aVarA2;
                int r132 = r02;
                MobileAccidentDashPointFragment this$0 = this.f2419b;
                switch (r132) {
                    case 0:
                        da.m<Object>[] mVarArr = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        this$0.f = true;
                        a aVar = this$0.f17052e;
                        if (aVar != null) {
                            l lVar = (l) this$0.f17049b.getValue();
                            lVar.getClass();
                            String dashPoint = aVar.f2415b;
                            kotlin.jvm.internal.h.f(dashPoint, "dashPoint");
                            m mVar = new m(lVar, dashPoint, null);
                            a0 a0Var = lVar.f13883c;
                            v.C(a0Var, null, 0, mVar, 3);
                            v.D(a0Var, lVar.f2446h, new n(lVar, null));
                            break;
                        } else {
                            Context context3 = this$0.f17051d;
                            if (context3 != null) {
                                int r03 = ke.d.f8929a;
                                NestedScrollView nestedScrollView = this$0.E().f17115t;
                                kotlin.jvm.internal.h.e(nestedScrollView, "mDashPointBinding.mktDashPointParentContainer");
                                ke.d dVarE = d.a.e(nestedScrollView, R.string.mkt_dash_point_no_selection_warning, null, ContextCompat.getColor(context3, R.color.black), ContextCompat.getColor(context3, R.color.info_toast));
                                if (dVarE != null) {
                                    dVarE.show();
                                    break;
                                }
                            }
                        }
                        break;
                    case 1:
                        da.m<Object>[] mVarArr2 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList = this$0.f17054h;
                        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
                        for (a aVar2 : arrayList) {
                            if (aVar2.f2414a == R.id.img_front_left_point) {
                                this$0.E().f17102g.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA2 = a.a(aVar2, true);
                                this$0.f17052e = aVarA2;
                            } else {
                                this$0.E().f17099c.getViewById(aVar2.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA2 = a.a(aVar2, false);
                            }
                            arrayList2.add(aVarA2);
                        }
                        this$0.f17054h = t.w1(arrayList2);
                        break;
                    default:
                        da.m<Object>[] mVarArr3 = MobileAccidentDashPointFragment.f17047j;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        ArrayList<a> arrayList3 = this$0.f17054h;
                        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                        for (a aVar3 : arrayList3) {
                            if (aVar3.f2414a == R.id.img_back_point) {
                                this$0.E().f17101e.setBackgroundResource(R.drawable.dash_point_selected);
                                aVarA = a.a(aVar3, true);
                                this$0.f17052e = aVarA;
                            } else {
                                this$0.E().f17099c.getViewById(aVar3.f2414a).setBackgroundResource(R.drawable.dash_point_unselected);
                                aVarA = a.a(aVar3, false);
                            }
                            arrayList4.add(aVarA);
                        }
                        this$0.f17054h = t.w1(arrayList4);
                        break;
                }
            }
        });
    }
}
