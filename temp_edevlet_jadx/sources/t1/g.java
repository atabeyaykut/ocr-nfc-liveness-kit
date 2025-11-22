package t1;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import c5.e0;
import c5.y;
import com.esafirm.imagepicker.databinding.EfFragmentImagePickerBinding;
import com.esafirm.imagepicker.features.ContentObserverTrigger;
import com.esafirm.imagepicker.view.SnackBarView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import tr.gov.turkiye.edevlet.kapisi.R;
import x1.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lt1/g;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "imagepicker_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class g extends Fragment {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f15520j = 0;

    /* renamed from: a, reason: collision with root package name */
    public EfFragmentImagePickerBinding f15521a;

    /* renamed from: b, reason: collision with root package name */
    public z1.b f15522b;

    /* renamed from: c, reason: collision with root package name */
    public final l9.j f15523c = y.w(new d());

    /* renamed from: d, reason: collision with root package name */
    public final l9.j f15524d = y.w(new a());

    /* renamed from: e, reason: collision with root package name */
    public final l9.j f15525e = y.w(c.f15529a);
    public final ActivityResultLauncher<String[]> f;

    /* renamed from: g, reason: collision with root package name */
    public u f15526g;

    /* renamed from: h, reason: collision with root package name */
    public l f15527h;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<t1.d> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final t1.d invoke() {
            Parcelable parcelable = g.this.requireArguments().getParcelable(t1.d.class.getSimpleName());
            kotlin.jvm.internal.h.c(parcelable);
            return (t1.d) parcelable;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements x9.a<l9.m> {
        public b(Object obj) {
            super(0, obj, g.class, "loadData", "loadData()V", 0);
        }

        @Override // x9.a
        public final l9.m invoke() {
            g gVar = (g) this.receiver;
            int r12 = g.f15520j;
            gVar.B();
            return l9.m.f9594a;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<String[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f15529a = new c();

        public c() {
            super(0);
        }

        @Override // x9.a
        public final String[] invoke() {
            int r02 = Build.VERSION.SDK_INT;
            if (r02 >= 33) {
                return new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"};
            }
            return new String[]{(r02 < 29 || Environment.isExternalStorageLegacy()) ? "android.permission.WRITE_EXTERNAL_STORAGE" : "android.permission.READ_EXTERNAL_STORAGE"};
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<a2.a> {
        public d() {
            super(0);
        }

        @Override // x9.a
        public final a2.a invoke() {
            Context contextRequireContext = g.this.requireContext();
            kotlin.jvm.internal.h.e(contextRequireContext, "requireContext()");
            return new a2.a(contextRequireContext);
        }
    }

    public g() {
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new e(0, this));
        kotlin.jvm.internal.h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.f = activityResultLauncherRegisterForActivityResult;
    }

    public final t1.d A() {
        return (t1.d) this.f15524d.getValue();
    }

    public final void B() {
        u uVar = this.f15526g;
        if (uVar == null) {
            kotlin.jvm.internal.h.n("presenter");
            throw null;
        }
        t1.d config = A();
        kotlin.jvm.internal.h.f(config, "config");
        x1.a aVar = uVar.f15550a;
        ExecutorService executorService = aVar.f19117b;
        if (executorService != null) {
            executorService.shutdown();
        }
        aVar.f19117b = null;
        r rVar = new r(uVar, config);
        boolean z10 = config.f15505h;
        boolean z11 = config.f15506j;
        boolean z12 = config.f15507k;
        boolean z13 = config.f15508l;
        List<? extends File> list = config.f15511p;
        aVar.f19117b = Executors.newSingleThreadExecutor();
        ExecutorService executorService2 = aVar.f19117b;
        kotlin.jvm.internal.h.c(executorService2);
        Context applicationContext = aVar.f19116a.getApplicationContext();
        kotlin.jvm.internal.h.e(applicationContext, "context.applicationContext");
        executorService2.execute(new a.RunnableC0300a(applicationContext, z10, z12, z11, z13, list, rVar));
    }

    public final void C() {
        boolean z10;
        boolean z11;
        SnackBarView snackBarView;
        l9.j jVar = this.f15525e;
        String[] strArr = (String[]) jVar.getValue();
        int length = strArr.length;
        int r32 = 0;
        int r42 = 0;
        while (true) {
            if (r42 >= length) {
                z10 = true;
                break;
            }
            if (!(ContextCompat.checkSelfPermission(requireContext(), strArr[r42]) == 0)) {
                z10 = false;
                break;
            }
            r42++;
        }
        if (z10) {
            B();
            return;
        }
        Log.w("ImagePicker", "Write External permission or Read Media Images is not granted. Requesting permission");
        String[] strArr2 = (String[]) jVar.getValue();
        int length2 = strArr2.length;
        int r43 = 0;
        while (true) {
            if (r43 >= length2) {
                z11 = false;
                break;
            } else {
                if (shouldShowRequestPermissionRationale(strArr2[r43])) {
                    z11 = true;
                    break;
                }
                r43++;
            }
        }
        ActivityResultLauncher<String[]> activityResultLauncher = this.f;
        if (z11) {
            activityResultLauncher.launch((String[]) jVar.getValue());
            return;
        }
        l9.j jVar2 = this.f15523c;
        if (!((a2.a) jVar2.getValue()).f36a.getBoolean("Key.WritePermissionGranted", false)) {
            ((a2.a) jVar2.getValue()).f36a.edit().putBoolean("Key.WritePermissionGranted", true).apply();
            activityResultLauncher.launch((String[]) jVar.getValue());
            return;
        }
        EfFragmentImagePickerBinding efFragmentImagePickerBinding = this.f15521a;
        if (efFragmentImagePickerBinding == null || (snackBarView = efFragmentImagePickerBinding.f2848b) == null) {
            return;
        }
        snackBarView.a(new f(r32, this));
    }

    public final void D() {
        u uVar = this.f15526g;
        if (uVar == null) {
            kotlin.jvm.internal.h.n("presenter");
            throw null;
        }
        z1.b bVar = this.f15522b;
        if (bVar == null) {
            kotlin.jvm.internal.h.n("recyclerViewManager");
            throw null;
        }
        ArrayList arrayListC = bVar.c();
        t1.d config = A();
        kotlin.jvm.internal.h.f(config, "config");
        if (config.f15515t) {
            if (arrayListC != null && arrayListC.size() == 0) {
                uVar.a(s.f15548a);
            }
        }
        if (arrayListC == null || arrayListC.isEmpty()) {
            return;
        }
        uVar.a(new t(arrayListC));
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x007b A[PHI: r1
      0x007b: PHI (r1v13 android.content.Context) = (r1v12 android.content.Context), (r1v15 android.content.Context) binds: [B:43:0x0079, B:22:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t1.g.E():void");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int r32, int r42, Intent intent) {
        super.onActivityResult(r32, r42, intent);
        if (r32 == 2000) {
            if (r42 == -1) {
                u uVar = this.f15526g;
                if (uVar == null) {
                    kotlin.jvm.internal.h.n("presenter");
                    throw null;
                }
                Context contextRequireContext = requireContext();
                kotlin.jvm.internal.h.e(contextRequireContext, "requireContext()");
                uVar.f15551b.c(contextRequireContext, new o(A(), uVar));
                return;
            }
            if (r42 != 0) {
                return;
            }
            u uVar2 = this.f15526g;
            if (uVar2 == null) {
                kotlin.jvm.internal.h.n("presenter");
                throw null;
            }
            Context contextRequireContext2 = requireContext();
            kotlin.jvm.internal.h.e(contextRequireContext2, "requireContext()");
            uVar2.f15551b.b(contextRequireContext2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        kotlin.jvm.internal.h.f(context, "context");
        super.onAttach(context);
        if (context instanceof l) {
            this.f15527h = (l) context;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.h.f(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        z1.b bVar = this.f15522b;
        if (bVar != null) {
            bVar.a(newConfig.orientation);
        } else {
            kotlin.jvm.internal.h.n("recyclerViewManager");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Lifecycle lifecycle = getLifecycle();
        ContentResolver contentResolver = requireActivity().getContentResolver();
        kotlin.jvm.internal.h.e(contentResolver, "requireActivity().contentResolver");
        lifecycle.addObserver(new ContentObserverTrigger(contentResolver, new b(this)));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        kotlin.jvm.internal.h.f(inflater, "inflater");
        Context contextRequireContext = requireContext();
        kotlin.jvm.internal.h.e(contextRequireContext, "requireContext()");
        this.f15526g = new u(new x1.a(contextRequireContext));
        l lVar = this.f15527h;
        if (lVar == null) {
            throw new RuntimeException("ImagePickerFragment needs an ImagePickerInteractionListener. This will be set automatically if the activity implements ImagePickerInteractionListener, and can be set manually with fragment.setInteractionListener(listener).");
        }
        View viewInflate = inflater.cloneInContext(new ContextThemeWrapper(getActivity(), A().f15504g)).inflate(R.layout.ef_fragment_image_picker, viewGroup, false);
        EfFragmentImagePickerBinding efFragmentImagePickerBindingBind = EfFragmentImagePickerBinding.bind(viewInflate);
        kotlin.jvm.internal.h.e(efFragmentImagePickerBindingBind, "bind(view)");
        List parcelableArrayList = bundle == null ? A().f15510n : bundle.getParcelableArrayList("Key.SelectedImages");
        RecyclerView recyclerView = efFragmentImagePickerBindingBind.f2850d;
        kotlin.jvm.internal.h.e(recyclerView, "viewBinding.recyclerView");
        t1.d dVarA = A();
        List list = m9.v.f10173a;
        if (parcelableArrayList == null) {
            parcelableArrayList = list;
        }
        z1.b bVar = new z1.b(recyclerView, dVarA, getResources().getConfiguration().orientation);
        j jVar = new j(bVar);
        i iVar = new i(bVar, this);
        boolean z10 = bVar.f19763b.f15499a == 1;
        boolean z11 = parcelableArrayList.size() > 1;
        if (!z10 || !z11) {
            list = parcelableArrayList;
        }
        t1.c cVar = e0.f1500q;
        if (cVar == null) {
            kotlin.jvm.internal.h.n("internalComponents");
            throw null;
        }
        y1.b bVarC = cVar.c();
        bVar.f19766e = new s1.g(bVar.b(), bVarC, list, jVar);
        bVar.f = new s1.c(bVar.b(), bVarC, new z1.a(bVar, iVar));
        h hVar = new h(this, lVar, dVarA);
        s1.g gVar = bVar.f19766e;
        if (gVar == null) {
            throw new IllegalStateException("Must call setupAdapters first!".toString());
        }
        if (gVar == null) {
            kotlin.jvm.internal.h.n("imageAdapter");
            throw null;
        }
        gVar.f = hVar;
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("Key.Recycler");
            GridLayoutManager gridLayoutManager = bVar.f19764c;
            kotlin.jvm.internal.h.c(gridLayoutManager);
            gridLayoutManager.onRestoreInstanceState(parcelable);
        }
        bVar.c();
        lVar.j();
        this.f15521a = efFragmentImagePickerBindingBind;
        this.f15522b = bVar;
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        u uVar = this.f15526g;
        if (uVar == null) {
            kotlin.jvm.internal.h.n("presenter");
            throw null;
        }
        x1.a aVar = uVar.f15550a;
        ExecutorService executorService = aVar.f19117b;
        if (executorService != null) {
            executorService.shutdown();
        }
        aVar.f19117b = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f15521a = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        C();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.h.f(outState, "outState");
        super.onSaveInstanceState(outState);
        z1.b bVar = this.f15522b;
        if (bVar == null) {
            kotlin.jvm.internal.h.n("recyclerViewManager");
            throw null;
        }
        GridLayoutManager gridLayoutManager = bVar.f19764c;
        kotlin.jvm.internal.h.c(gridLayoutManager);
        outState.putParcelable("Key.Recycler", gridLayoutManager.onSaveInstanceState());
        z1.b bVar2 = this.f15522b;
        if (bVar2 == null) {
            kotlin.jvm.internal.h.n("recyclerViewManager");
            throw null;
        }
        ArrayList arrayListC = bVar2.c();
        kotlin.jvm.internal.h.d(arrayListC, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable?>{ kotlin.collections.TypeAliasesKt.ArrayList<out android.os.Parcelable?> }");
        outState.putParcelableArrayList("Key.SelectedImages", arrayListC);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        u uVar = this.f15526g;
        if (uVar == null) {
            kotlin.jvm.internal.h.n("presenter");
            throw null;
        }
        k kVar = new k(this);
        c2.b<w> bVar = uVar.f15552c;
        bVar.getClass();
        MutableLiveData<w> mutableLiveData = bVar.f1370a;
        c2.a aVar = new c2.a(0, kVar);
        mutableLiveData.removeObserver(aVar);
        mutableLiveData.observe(this, aVar);
    }
}
