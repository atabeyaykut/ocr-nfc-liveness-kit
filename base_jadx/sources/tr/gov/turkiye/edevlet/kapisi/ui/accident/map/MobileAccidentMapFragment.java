package tr.gov.turkiye.edevlet.kapisi.ui.accident.map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import c5.u;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import da.m;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import r3.r;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentMapBinding;
import x4.c;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentMapFragment extends ee.a {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17338m = {androidx.room.util.a.b(MobileAccidentMapFragment.class, "mMapBinding", "getMMapBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMapBinding;"), androidx.room.util.a.b(MobileAccidentMapFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17339a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17340b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17341c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17342d;

    /* renamed from: e, reason: collision with root package name */
    public Double f17343e;
    public Double f;

    /* renamed from: g, reason: collision with root package name */
    public Double f17344g;

    /* renamed from: h, reason: collision with root package name */
    public Double f17345h;

    /* renamed from: j, reason: collision with root package name */
    public String f17346j;

    /* renamed from: k, reason: collision with root package name */
    public String f17347k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f17348l;

    public static final class a extends j implements l<kh.d, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(kh.d dVar) {
            v.e eVar;
            kh.d state = dVar;
            h.f(state, "state");
            r0.b<Result<LocationSaveModel>> bVar = state.f8948a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentMapFragment mobileAccidentMapFragment = MobileAccidentMapFragment.this;
            if (z10) {
                if (mobileAccidentMapFragment.f17348l && (eVar = mobileAccidentMapFragment.f17341c) != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("Success", new Object[0]);
                v.e eVar2 = mobileAccidentMapFragment.f17341c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                FragmentKt.findNavController(mobileAccidentMapFragment).popBackStack();
            } else if (bVar instanceof i) {
                yd.a.f19652a.c("Error", new Object[0]);
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentMapBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17350a = new b();

        public b() {
            super(1, FragmentMapBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMapBinding;", 0);
        }

        @Override // x9.l
        public final FragmentMapBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentMapBinding.bind(p02);
        }
    }

    public static final class c implements c.b {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ z4.b f17352b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ x4.c f17353c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ z4.c f17354d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ LatLng f17355e;

        public c(z4.b bVar, x4.c cVar, z4.c cVar2, LatLng latLng) {
            this.f17352b = bVar;
            this.f17353c = cVar;
            this.f17354d = cVar2;
            this.f17355e = latLng;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
        @Override // x4.c.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(z4.d r10) {
            /*
                r9 = this;
                com.google.android.gms.maps.model.LatLng r0 = r10.a()
                java.lang.String r1 = "marker.position"
                kotlin.jvm.internal.h.e(r0, r1)
                da.m<java.lang.Object>[] r1 = tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.f17338m
                tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment r1 = tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.this
                r1.getClass()
                z4.b r2 = r9.f17352b
                boolean r0 = tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.F(r0, r2)
                r2 = 1
                x4.c r3 = r9.f17353c
                if (r0 == 0) goto L61
                r3.getClass()
                y4.b r0 = r3.f19135a     // Catch: android.os.RemoteException -> L5a
                r0.clear()     // Catch: android.os.RemoteException -> L5a
                z4.e r0 = new z4.e
                r0.<init>()
                android.content.Context r4 = r1.f17342d
                kotlin.jvm.internal.h.c(r4)
                z4.a r4 = tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.E(r4)
                r0.f19827d = r4
                r0.f19829g = r2
                com.google.android.gms.maps.model.LatLng r2 = r10.a()
                r0.E(r2)
                com.google.android.gms.maps.model.LatLng r2 = r10.a()
                double r4 = r2.f4188a
                java.lang.String r2 = java.lang.String.valueOf(r4)
                r1.f17346j = r2
                com.google.android.gms.maps.model.LatLng r2 = r10.a()
                double r4 = r2.f4189b
                java.lang.String r2 = java.lang.String.valueOf(r4)
                r1.f17347k = r2
                com.google.android.gms.maps.model.LatLng r10 = r10.a()
                goto Ld3
            L5a:
                r10 = move-exception
                z4.g r0 = new z4.g
                r0.<init>(r10)
                throw r0
            L61:
                r10 = 2131951923(0x7f130133, float:1.9540274E38)
                r1.G(r10)
                r3.getClass()
                y4.b r10 = r3.f19135a     // Catch: android.os.RemoteException -> Le3
                r10.clear()     // Catch: android.os.RemoteException -> Le3
                java.lang.String r10 = r1.f17346j
                r0 = 0
                if (r10 == 0) goto L7d
                int r10 = r10.length()
                if (r10 != 0) goto L7b
                goto L7d
            L7b:
                r10 = 0
                goto L7e
            L7d:
                r10 = 1
            L7e:
                if (r10 == 0) goto L90
                java.lang.String r10 = r1.f17347k
                if (r10 == 0) goto L8a
                int r10 = r10.length()
                if (r10 != 0) goto L8b
            L8a:
                r0 = 1
            L8b:
                if (r0 == 0) goto L90
                com.google.android.gms.maps.model.LatLng r10 = r9.f17355e
                goto Lbe
            L90:
                com.google.android.gms.maps.model.LatLng r10 = new com.google.android.gms.maps.model.LatLng
                java.lang.String r0 = r1.f17346j
                r4 = 0
                if (r0 == 0) goto La0
                double r5 = java.lang.Double.parseDouble(r0)
                java.lang.Double r0 = java.lang.Double.valueOf(r5)
                goto La1
            La0:
                r0 = r4
            La1:
                kotlin.jvm.internal.h.c(r0)
                double r5 = r0.doubleValue()
                java.lang.String r0 = r1.f17347k
                if (r0 == 0) goto Lb4
                double r7 = java.lang.Double.parseDouble(r0)
                java.lang.Double r4 = java.lang.Double.valueOf(r7)
            Lb4:
                kotlin.jvm.internal.h.c(r4)
                double r7 = r4.doubleValue()
                r10.<init>(r5, r7)
            Lbe:
                z4.e r0 = new z4.e
                r0.<init>()
                android.content.Context r1 = r1.f17342d
                kotlin.jvm.internal.h.c(r1)
                z4.a r1 = tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.E(r1)
                r0.f19827d = r1
                r0.f19829g = r2
                r0.E(r10)
            Ld3:
                x4.a r10 = x4.b.a(r10)
                r3.c(r10)
                z4.c r10 = r9.f17354d
                r3.a(r10)
                r3.b(r0)
                return
            Le3:
                r10 = move-exception
                z4.g r0 = new z4.g
                r0.<init>(r10)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.c.a(z4.d):void");
        }

        @Override // x4.c.b
        public final void b(z4.d dVar) {
        }

        @Override // x4.c.b
        public final void c(z4.d dVar) {
        }
    }

    public static final class d extends j implements l<q<kh.e, kh.d>, kh.e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17356a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17357b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17358c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17356a = fragment;
            this.f17357b = dVar;
            this.f17358c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [kh.e, r0.z] */
        @Override // x9.l
        public final kh.e invoke(q<kh.e, kh.d> qVar) {
            q<kh.e, kh.d> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17357b);
            Fragment fragment = this.f17356a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17358c, clsQ, kh.d.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class e extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17359a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17360b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17361c;

        public e(da.d dVar, d dVar2, da.d dVar3) {
            this.f17359a = dVar;
            this.f17360b = dVar2;
            this.f17361c = dVar3;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17359a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.map.a(this), w.a(kh.d.class), this.f17360b);
        }
    }

    public MobileAccidentMapFragment() {
        super(R.layout.fragment_map);
        this.f17339a = d0.C(this, b.f17350a);
        da.d dVarA = w.a(kh.e.class);
        this.f17340b = new e(dVarA, new d(this, dVarA, dVarA), dVarA).t(this, f17338m[1]);
    }

    public static z4.a E(Context context) {
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.map_marker);
        h.c(drawable);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        h.e(bitmapCreateBitmap, "createBitmap(\n          …onfig.ARGB_8888\n        )");
        drawable.draw(new Canvas(bitmapCreateBitmap));
        try {
            n4.i iVar = x5.a.f19159m;
            r.j(iVar, "IBitmapDescriptorFactory is not initialized");
            return new z4.a(iVar.y(bitmapCreateBitmap));
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    public static boolean F(LatLng latLng, z4.b bVar) {
        float[] fArr = new float[2];
        double d10 = latLng.f4188a;
        double d11 = latLng.f4189b;
        bVar.getClass();
        try {
            LatLng latLngF = bVar.f19814a.f();
            n4.l lVar = bVar.f19814a;
            try {
                Location.distanceBetween(d10, d11, latLngF.f4188a, lVar.f().f4189b, fArr);
                try {
                    return ((double) fArr[0]) <= lVar.d();
                } catch (RemoteException e10) {
                    throw new z4.g(e10);
                }
            } catch (RemoteException e11) {
                throw new z4.g(e11);
            }
        } catch (RemoteException e12) {
            throw new z4.g(e12);
        }
    }

    public final void G(int r52) {
        Context context = this.f17342d;
        if (context != null) {
            int r02 = ke.d.f8929a;
            ConstraintLayout constraintLayout = ((FragmentMapBinding) this.f17339a.a(this, f17338m[0])).f17158c;
            h.e(constraintLayout, "mMapBinding.mktMapContainer");
            ke.d dVarE = d.a.e(constraintLayout, R.string.mkt_location_circle_warning, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((kh.e) this.f17340b.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        h.f(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_map, viewGroup, false);
        h.e(viewInflate, "inflater.inflate(R.layou…nt_map, container, false)");
        SupportMapFragment supportMapFragment = (SupportMapFragment) getChildFragmentManager().findFragmentById(R.id.google_map);
        if (supportMapFragment != null) {
            x4.e eVar = new x4.e() { // from class: kh.a
                /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
                @Override // x4.e
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void a(x4.c r13) {
                    /*
                        r12 = this;
                        da.m<java.lang.Object>[] r0 = tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.f17338m
                        tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment r0 = r12.f8933a
                        java.lang.String r1 = "this$0"
                        kotlin.jvm.internal.h.f(r0, r1)
                        y4.b r7 = r13.f19135a
                        com.google.android.gms.maps.model.LatLng r1 = new com.google.android.gms.maps.model.LatLng
                        java.lang.Double r2 = r0.f17343e
                        kotlin.jvm.internal.h.c(r2)
                        double r2 = r2.doubleValue()
                        java.lang.Double r4 = r0.f
                        kotlin.jvm.internal.h.c(r4)
                        double r4 = r4.doubleValue()
                        r1.<init>(r2, r4)
                        java.lang.Double r2 = r0.f17344g
                        r3 = 1
                        r4 = 0
                        if (r2 == 0) goto L60
                        double r5 = r2.doubleValue()
                        r8 = 0
                        int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                        if (r2 != 0) goto L34
                        r2 = 1
                        goto L35
                    L34:
                        r2 = 0
                    L35:
                        if (r2 != 0) goto L60
                        java.lang.Double r2 = r0.f17345h
                        if (r2 == 0) goto L60
                        double r5 = r2.doubleValue()
                        int r2 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
                        if (r2 != 0) goto L45
                        r2 = 1
                        goto L46
                    L45:
                        r2 = 0
                    L46:
                        if (r2 != 0) goto L60
                        com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
                        java.lang.Double r5 = r0.f17344g
                        kotlin.jvm.internal.h.c(r5)
                        double r5 = r5.doubleValue()
                        java.lang.Double r8 = r0.f17345h
                        kotlin.jvm.internal.h.c(r8)
                        double r8 = r8.doubleValue()
                        r2.<init>(r5, r8)
                        goto L77
                    L60:
                        com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
                        java.lang.Double r5 = r0.f17343e
                        kotlin.jvm.internal.h.c(r5)
                        double r5 = r5.doubleValue()
                        java.lang.Double r8 = r0.f
                        kotlin.jvm.internal.h.c(r8)
                        double r8 = r8.doubleValue()
                        r2.<init>(r5, r8)
                    L77:
                        r8 = r2
                        z4.c r9 = new z4.c
                        r9.<init>()
                        r9.f19815a = r1
                        r9.f19821h = r4
                        r1 = 2131099713(0x7f060041, float:1.7811787E38)
                        r9.f19818d = r1
                        r1 = 4636737291354636288(0x4059000000000000, double:100.0)
                        r9.f19816b = r1
                        z4.b r10 = r13.a(r9)
                        z4.e r1 = new z4.e
                        r1.<init>()
                        android.content.Context r2 = r0.f17342d
                        kotlin.jvm.internal.h.c(r2)
                        z4.a r2 = tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment.E(r2)
                        r1.f19827d = r2
                        r1.f19829g = r3
                        r1.E(r8)
                        r13.b(r1)
                        tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment$c r11 = new tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapFragment$c
                        r1 = r11
                        r2 = r0
                        r3 = r10
                        r4 = r13
                        r5 = r9
                        r6 = r8
                        r1.<init>(r3, r4, r5, r6)
                        x4.j r1 = new x4.j     // Catch: android.os.RemoteException -> Ld5
                        r1.<init>(r11)     // Catch: android.os.RemoteException -> Ld5
                        r7.H(r1)     // Catch: android.os.RemoteException -> Ld5
                        x4.a r1 = x4.b.a(r8)
                        r13.c(r1)
                        kh.b r1 = new kh.b
                        r1.<init>(r0, r10, r13, r9)
                        x4.k r13 = new x4.k     // Catch: android.os.RemoteException -> Lce
                        r13.<init>(r1)     // Catch: android.os.RemoteException -> Lce
                        r7.Z(r13)     // Catch: android.os.RemoteException -> Lce
                        return
                    Lce:
                        r13 = move-exception
                        z4.g r0 = new z4.g
                        r0.<init>(r13)
                        throw r0
                    Ld5:
                        r13 = move-exception
                        z4.g r0 = new z4.g
                        r0.<init>(r13)
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kh.a.a(x4.c):void");
                }
            };
            r.e("getMapAsync must be called on the main thread.");
            x4.i iVar = supportMapFragment.f4183a;
            z3.c cVar = iVar.f19793a;
            if (cVar != null) {
                try {
                    ((x4.h) cVar).f19143b.B(new x4.g(eVar));
                } catch (RemoteException e10) {
                    throw new z4.g(e10);
                }
            } else {
                iVar.f19146h.add(eVar);
            }
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f17342d = context;
        if (context != null) {
            Object systemService = context.getSystemService("layout_inflater");
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            Context context2 = this.f17342d;
            h.c(context2);
            v.e eVar = new v.e(context2);
            this.f17341c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17341c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        Bundle arguments = getArguments();
        this.f17343e = arguments != null ? Double.valueOf(arguments.getDouble("latitude")) : null;
        Bundle arguments2 = getArguments();
        this.f = arguments2 != null ? Double.valueOf(arguments2.getDouble("longitude")) : null;
        Bundle arguments3 = getArguments();
        this.f17344g = arguments3 != null ? Double.valueOf(arguments3.getDouble("accidentLatitude")) : null;
        Bundle arguments4 = getArguments();
        this.f17345h = arguments4 != null ? Double.valueOf(arguments4.getDouble("accidentLongitude")) : null;
        ((FragmentMapBinding) this.f17339a.a(this, f17338m[0])).f17157b.setOnClickListener(new nf.a(13, this));
    }
}
