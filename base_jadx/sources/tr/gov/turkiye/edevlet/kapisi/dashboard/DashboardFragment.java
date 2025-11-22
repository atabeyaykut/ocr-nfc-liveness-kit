package tr.gov.turkiye.edevlet.kapisi.dashboard;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.camera.camera2.interop.f;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.view.OnBackPressedCallback;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.b4;
import c5.u;
import c5.w;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.transition.MaterialFadeThrough;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import io.realm.RealmQuery;
import io.realm.d0;
import io.realm.g0;
import io.realm.y0;
import java.util.ArrayList;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import org.greenrobot.eventbus.ThreadMode;
import qd.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.common.worker.logout.LogoutWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentDashboardBinding;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageData;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.EditorChoiceServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import v.e;
import x9.l;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\bH\u0007¨\u0006\u000b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;", "Lpe/f;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "Lxe/a;", "Lqe/b;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class DashboardFragment extends ee.a implements DashboardUIController.a {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16156k = {androidx.room.util.a.b(DashboardFragment.class, "mDashboardFragmentBinding", "getMDashboardFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public SharedPreferences f16157a;

    /* renamed from: b, reason: collision with root package name */
    public gf.b f16158b;

    /* renamed from: c, reason: collision with root package name */
    public FirebaseAnalytics f16159c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f16160d;

    /* renamed from: e, reason: collision with root package name */
    public y0 f16161e;
    public DashboardUIController f;

    /* renamed from: g, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16162g;

    /* renamed from: h, reason: collision with root package name */
    public Context f16163h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16164j;

    public /* synthetic */ class a extends g implements l<View, FragmentDashboardBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16165a = new a();

        public a() {
            super(1, FragmentDashboardBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;", 0);
        }

        @Override // x9.l
        public final FragmentDashboardBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentDashboardBinding.bind(p02);
        }
    }

    public static final class b extends OnBackPressedCallback {

        public static final class a extends j implements l<e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ DashboardFragment f16167a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(DashboardFragment dashboardFragment) {
                super(1);
                this.f16167a = dashboardFragment;
            }

            @Override // x9.l
            public final l9.m invoke(e eVar) {
                e dialog = eVar;
                DashboardFragment dashboardFragment = this.f16167a;
                h.f(dialog, "dialog");
                try {
                    Context context = dashboardFragment.f16163h;
                    OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(LogoutWorker.class).build();
                    h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilder<LogoutWorker>().build()");
                    OneTimeWorkRequest oneTimeWorkRequest = oneTimeWorkRequestBuild;
                    if (context != null) {
                        WorkManager.getInstance(context).enqueue(oneTimeWorkRequest);
                    }
                } catch (Exception unused) {
                }
                FragmentActivity fragmentActivityRequireActivity = dashboardFragment.requireActivity();
                Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                if (Build.VERSION.SDK_INT >= 34) {
                    intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                fragmentActivityRequireActivity.startActivity(intentB);
                dashboardFragment.requireActivity().finish();
                dialog.dismiss();
                return l9.m.f9594a;
            }
        }

        /* renamed from: tr.gov.turkiye.edevlet.kapisi.dashboard.DashboardFragment$b$b, reason: collision with other inner class name */
        public static final class C0270b extends j implements l<e, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final C0270b f16168a = new C0270b();

            public C0270b() {
                super(1);
            }

            @Override // x9.l
            public final l9.m invoke(e eVar) {
                e dialog = eVar;
                h.f(dialog, "dialog");
                dialog.dismiss();
                return l9.m.f9594a;
            }
        }

        public b() {
            super(true);
        }

        @Override // androidx.view.OnBackPressedCallback
        public final void handleOnBackPressed() {
            DashboardFragment dashboardFragment = DashboardFragment.this;
            Context context = dashboardFragment.f16163h;
            if (context != null) {
                e eVar = new e(context);
                e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.dashboard_logout_dialog_text, eVar, null, 6, R.string.dashboard_logout_dialog_yes), null, new a(dashboardFragment), 2);
                e.d(eVar, Integer.valueOf(R.string.dashboard_logout_dialog_no), C0270b.f16168a);
                eVar.show();
            }
        }
    }

    public static final class c extends j implements l<e, l9.m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InfoMessageData f16170b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(InfoMessageData infoMessageData) {
            super(1);
            this.f16170b = infoMessageData;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // x9.l
        public final l9.m invoke(e eVar) throws Throwable {
            e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            m<Object>[] mVarArr = DashboardFragment.f16156k;
            DashboardFragment dashboardFragment = DashboardFragment.this;
            dashboardFragment.getClass();
            InfoMessageData infoMessageData = this.f16170b;
            DashboardFragment.O(infoMessageData);
            int popupType = infoMessageData.getPopupType();
            if (popupType == 3) {
                dashboardFragment.I(R.string.item_dashboard_announcement);
            } else if (popupType == 4) {
                String folderTitle = infoMessageData.getFolderTitle();
                h.c(folderTitle);
                String folder = infoMessageData.getFolder();
                h.c(folder);
                dashboardFragment.J(folderTitle, folder);
            } else if (popupType == 5) {
                dashboardFragment.K(R.string.item_dashboard_messages);
            } else if (popupType == 6) {
                l9.g[] gVarArr = {new l9.g("serviceCode", infoMessageData.getServiceCode())};
                Data.Builder builder = new Data.Builder();
                l9.g gVar = gVarArr[0];
                builder.put((String) gVar.f9582a, gVar.f9583b);
                Data dataBuild = builder.build();
                h.e(dataBuild, "dataBuilder.build()");
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(ServiceDetailWorker.class).setInputData(dataBuild).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…tData(workerData).build()");
                OneTimeWorkRequest oneTimeWorkRequest = oneTimeWorkRequestBuild;
                Context context = dashboardFragment.f16163h;
                if (context != null) {
                    WorkManager.getInstance(context).enqueue(oneTimeWorkRequest);
                }
            } else if (popupType == 7) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(infoMessageData.getUrl()));
                    dashboardFragment.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    Context context2 = dashboardFragment.f16163h;
                    if (context2 != null) {
                        FragmentActivity activity = dashboardFragment.getActivity();
                        View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                        int r22 = ke.d.f8929a;
                        ConstraintLayout constraintLayout = dashboardFragment.E().f16225b;
                        h.e(constraintLayout, "mDashboardFragmentBinding.dashboardContainer");
                        ke.d dVarE = d.a.e(constraintLayout, R.string.web_page_no_application, viewFindViewById, ContextCompat.getColor(context2, R.color.black), ContextCompat.getColor(context2, R.color.info_toast));
                        if (dVarE != null) {
                            dVarE.show();
                        }
                    }
                }
            }
            return l9.m.f9594a;
        }
    }

    public static final class d extends j implements l<e, l9.m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InfoMessageData f16172b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(InfoMessageData infoMessageData) {
            super(1);
            this.f16172b = infoMessageData;
        }

        @Override // x9.l
        public final l9.m invoke(e eVar) {
            e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            m<Object>[] mVarArr = DashboardFragment.f16156k;
            DashboardFragment.this.getClass();
            DashboardFragment.O(this.f16172b);
            return l9.m.f9594a;
        }
    }

    public DashboardFragment() {
        super(R.layout.fragment_dashboard);
        this.f16162g = d0.C(this, a.f16165a);
        this.f16164j = true;
    }

    public static void O(InfoMessageData infoMessageData) {
        g0 g0VarT = g0.t();
        InfoMessageModelRealm infoMessageModelRealm = new InfoMessageModelRealm();
        infoMessageModelRealm.setMessageId(Integer.valueOf(infoMessageData.getId()));
        infoMessageModelRealm.setMessageButtonText(infoMessageData.getButtonTitle());
        infoMessageModelRealm.setMessageContent(infoMessageData.getMessage());
        infoMessageModelRealm.setMessageFolder(infoMessageData.getFolder());
        infoMessageModelRealm.setMessageIconLink(infoMessageData.getIcon());
        infoMessageModelRealm.setMessageLink(infoMessageData.getUrl());
        infoMessageModelRealm.setMessageServiceCode(infoMessageData.getServiceCode());
        infoMessageModelRealm.setMessageTitle(infoMessageData.getTitle());
        infoMessageModelRealm.setMessageType(Integer.valueOf(infoMessageData.getPopupType()));
        infoMessageModelRealm.setMessageShown(true);
        g0VarT.s(new f(4, infoMessageModelRealm));
    }

    public final FragmentDashboardBinding E() {
        return (FragmentDashboardBinding) this.f16162g.a(this, f16156k[0]);
    }

    public final gf.b F() {
        gf.b bVar = this.f16158b;
        if (bVar != null) {
            return bVar;
        }
        h.n("mNetworkHelper");
        throw null;
    }

    public final void G(String str) {
        try {
            String strC = mc.j.C(str, " ", "_");
            FirebaseAnalytics firebaseAnalytics = this.f16159c;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("action", strC);
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "EDK_MainPage");
        } catch (Exception unused) {
        }
    }

    public final void H(String str) {
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16159c;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("screen_name", str);
            b4Var.d("screen_class", "DashboardFragment");
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
        } catch (Exception unused) {
        }
    }

    public final void I(int r42) {
        if (this.f16158b == null) {
            L();
            return;
        }
        if (!F().a()) {
            N();
            return;
        }
        String string = getString(r42);
        h.e(string, "getString(name)");
        Intent intent = new Intent("action.servicepage.open");
        intent.putExtra("folderUrl", "edk-duyurular");
        intent.putExtra("serviceName", string);
        intent.putExtra("isCustomPage", true);
        intent.putExtra("isEdkFolder", true);
        intent.putExtra("isFavMenuActive", false);
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        startActivity(intent);
    }

    public final void J(String str, String str2) {
        if (this.f16158b == null) {
            L();
            return;
        }
        if (!F().a()) {
            N();
            return;
        }
        Intent intent = new Intent("action.servicepage.open");
        intent.putExtra("folderUrl", str2);
        intent.putExtra("serviceName", str);
        intent.putExtra("isCustomPage", true);
        intent.putExtra("isEdkFolder", true);
        intent.putExtra("isFavMenuActive", false);
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        startActivity(intent);
    }

    public final void K(int r42) {
        if (this.f16158b == null) {
            L();
            return;
        }
        if (!F().a()) {
            N();
            return;
        }
        String string = getString(r42);
        h.e(string, "getString(name)");
        Intent intent = new Intent("action.servicepage.open");
        intent.putExtra("folderUrl", "edk-mesaj-kutusu");
        intent.putExtra("serviceName", string);
        intent.putExtra("isCustomPage", true);
        intent.putExtra("isEdkFolder", true);
        intent.putExtra("isFavMenuActive", false);
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        startActivity(intent);
    }

    public final void L() {
        Context context = this.f16163h;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = E().f16225b;
            h.e(constraintLayout, "mDashboardFragmentBinding.dashboardContainer");
            ke.d dVarA = d.a.a(constraintLayout, R.string.service_error_info, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
            if (dVarA != null) {
                dVarA.show();
            }
        }
    }

    public final void M(InfoMessageData infoMessageData) {
        String string;
        Context context = this.f16163h;
        if (context != null) {
            try {
                Object systemService = context.getSystemService("layout_inflater");
                h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
                View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.info_message_dialog, (ViewGroup) null);
                h.e(viewInflate, "inflater.inflate(R.layou…nfo_message_dialog, null)");
                TextView textView = (TextView) viewInflate.findViewById(R.id.result_dialog_txt_title);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.result_dialog_txt_content);
                ImageView dialogImage = (ImageView) viewInflate.findViewById(R.id.result_dialog_status_icon);
                h.e(dialogImage, "dialogImage");
                ge.b.d(dialogImage, infoMessageData.getIcon());
                textView2.setText(infoMessageData.getMessage());
                textView.setText(infoMessageData.getTitle());
                int popupType = infoMessageData.getPopupType();
                String buttonTitle = infoMessageData.getButtonTitle();
                if (buttonTitle == null || buttonTitle.length() == 0) {
                    String str = "getString(R.string.button_text_url)";
                    if (popupType == 2) {
                        string = getString(R.string.button_text_settings);
                        str = "getString(R.string.button_text_settings)";
                    } else if (popupType == 3) {
                        string = getString(R.string.button_text_announcement);
                        str = "getString(R.string.button_text_announcement)";
                    } else if (popupType == 5) {
                        string = getString(R.string.button_text_message);
                        str = "getString(R.string.button_text_message)";
                    } else if (popupType != 6) {
                        string = getString(R.string.button_text_url);
                    } else {
                        string = getString(R.string.button_text_service);
                        str = "getString(R.string.button_text_service)";
                    }
                    h.e(string, str);
                    buttonTitle = string;
                }
                e eVar = new e(context);
                u.n(eVar, viewInflate);
                if (infoMessageData.getPopupType() != 1) {
                    e.e(eVar, null, buttonTitle, new c(infoMessageData), 1);
                }
                e.d(eVar, Integer.valueOf(R.string.button_text_close), new d(infoMessageData));
                eVar.b(false);
                a0.b.m(eVar, this);
                eVar.show();
            } catch (Exception unused) {
                l9.m mVar = l9.m.f9594a;
            }
        }
    }

    public final void N() {
        Context context = this.f16163h;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = E().f16225b;
            h.e(constraintLayout, "mDashboardFragmentBinding.dashboardContainer");
            ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController.a
    public final void d() {
        FragmentKt.findNavController(this).navigate(R.id.editorChoiceListFragment);
        H("EditorServiceList_Screen");
        G("Editor_Services");
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController.a
    public final void e(ConceptServiceModelRealm service) {
        h.f(service, "service");
        if (this.f16158b == null) {
            L();
            return;
        }
        if (!F().a()) {
            N();
            return;
        }
        Intent intentA = oe.a.a(service);
        if (intentA != null) {
            startActivity(intentA);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController.a
    public final void i(ServiceModelRealm service) {
        h.f(service, "service");
        if (this.f16158b == null) {
            L();
            return;
        }
        if (!F().a()) {
            N();
            return;
        }
        Intent intentC = oe.a.c(service, service.isFavorite());
        if (intentC != null) {
            startActivity(intentC);
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
        setEnterTransition(new MaterialFadeThrough());
        requireActivity().getOnBackPressedDispatcher().addCallback(this, new b());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        h.f(menu, "menu");
        h.f(inflater, "inflater");
        inflater.inflate(R.menu.dashboard_menu, menu);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(pe.f fVar) {
        if (fVar != null) {
            try {
                String str = fVar.f13133a;
                if (this.f16164j) {
                    if (str.length() > 0) {
                        String str2 = new String(je.a.a(str), mc.a.f10357a);
                        DashboardUIController dashboardUIController = this.f;
                        if (dashboardUIController == null) {
                            h.n("mDashboardUIController");
                            throw null;
                        }
                        ArrayList arrayList = this.f16160d;
                        if (arrayList == null) {
                            h.n("editorChoiceList");
                            throw null;
                        }
                        y0 y0Var = this.f16161e;
                        if (y0Var == null) {
                            h.n("conceptServiceList");
                            throw null;
                        }
                        dashboardUIController.setData(arrayList, str2, y0Var);
                    }
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(pe.f.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(xe.a aVar) {
        ServiceModelRealm serviceModelRealm;
        Intent intentC;
        if (aVar != null) {
            if (!aVar.f19225a || (serviceModelRealm = aVar.f19226b) == null || (intentC = oe.a.c(serviceModelRealm, serviceModelRealm.isFavorite())) == null) {
                L();
            } else {
                startActivity(intentC);
            }
        }
        qd.b.b().l(xe.a.class);
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem item) {
        h.f(item, "item");
        if (item.getItemId() != R.id.menu_about) {
            return super.onOptionsItemSelected(item);
        }
        FragmentKt.findNavController(this).navigate(R.id.aboutPageFragment);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() throws SecurityException {
        super.onResume();
        if (!qd.b.b().e(this)) {
            qd.b.b().k(this);
        }
        H("MainPage_Screen");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String string;
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        boolean z10 = true;
        setHasOptionsMenu(true);
        this.f16163h = view.getContext();
        E().f16226c.setLayoutManager(new GridLayoutManager(this.f16163h, 2));
        SharedPreferences sharedPreferences = this.f16157a;
        if (sharedPreferences != null) {
            string = sharedPreferences.getString("as", null);
            if (string != null && string.length() != 0) {
                z10 = false;
            }
            if (!z10) {
                String str = new String(je.a.a(string), mc.a.f10357a);
                this.f16164j = false;
                string = str;
            }
        } else {
            string = null;
        }
        g0 realm = g0.t();
        h.e(realm, "realm");
        RealmQuery realmQueryJ = realm.J(EditorChoiceServiceModelRealm.class);
        realmQueryJ.h("serviceInsertion");
        realmQueryJ.f();
        y0 y0VarD = realmQueryJ.d();
        ArrayList arrayList = new ArrayList();
        d0.c cVar = new d0.c();
        while (cVar.hasNext()) {
            EditorChoiceServiceModelRealm editorChoiceServiceModelRealm = (EditorChoiceServiceModelRealm) cVar.next();
            RealmQuery realmQueryJ2 = realm.J(ServiceModelRealm.class);
            realmQueryJ2.b(editorChoiceServiceModelRealm.getServiceCode(), "serviceCode");
            ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ2.e();
            if (serviceModelRealm != null) {
                arrayList.add(serviceModelRealm);
            }
        }
        this.f16160d = arrayList;
        g0 realm2 = g0.t();
        h.e(realm2, "realm");
        RealmQuery realmQueryJ3 = realm2.J(ConceptServiceModelRealm.class);
        realmQueryJ3.h("serviceInsertion");
        realmQueryJ3.f();
        this.f16161e = realmQueryJ3.d();
        DashboardUIController dashboardUIController = new DashboardUIController(this);
        this.f = dashboardUIController;
        dashboardUIController.getAdapter().registerAdapterDataObserver(new lf.a(this));
        EpoxyRecyclerView epoxyRecyclerView = E().f16226c;
        DashboardUIController dashboardUIController2 = this.f;
        if (dashboardUIController2 == null) {
            h.n("mDashboardUIController");
            throw null;
        }
        epoxyRecyclerView.setController(dashboardUIController2);
        DashboardUIController dashboardUIController3 = this.f;
        if (dashboardUIController3 == null) {
            h.n("mDashboardUIController");
            throw null;
        }
        ArrayList arrayList2 = this.f16160d;
        if (arrayList2 == null) {
            h.n("editorChoiceList");
            throw null;
        }
        y0 y0Var = this.f16161e;
        if (y0Var != null) {
            dashboardUIController3.setData(arrayList2, string, y0Var);
        } else {
            h.n("conceptServiceList");
            throw null;
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController.a
    public final void p(lf.b item) {
        String str;
        h.f(item, "item");
        int r02 = item.f9809a;
        int r52 = item.f9810b;
        switch (r02) {
            case 1:
                FragmentKt.findNavController(this).navigate(R.id.favoriteServiceListFragment);
                H("MyFavoriteServices_Screen");
                str = "Favorite_Services";
                break;
            case 2:
                I(r52);
                H("Announcement_Screen");
                str = "Announcement";
                break;
            case 3:
                K(r52);
                H("Messages_Screen");
                str = "Messages";
                break;
            case 4:
                FragmentKt.findNavController(this).navigate(R.id.mostUsedServiceListFragment);
                H("MostUsedServices_Screen");
                str = "Most_Used_Services";
                break;
            case 5:
                FragmentKt.findNavController(this).navigate(R.id.newestServiceListFragment);
                H("NewlyAddedServices_Screen");
                str = "Newly_Added_Services";
                break;
            case 6:
                FragmentKt.findNavController(this).navigate(R.id.electronicDosServiceListFragment);
                H("EBYSServices_Screen");
                str = "Electronic_Document_Services";
                break;
            case 7:
                FragmentKt.findNavController(this).navigate(R.id.barcodeVerifyFragment);
                H("BarcodedDocumentServices_Screen");
                str = "Barcoded_Document_Verify";
                break;
            case 8:
                FragmentKt.findNavController(this).navigate(R.id.barcodeServiceListFragment);
                H("BarcodedDocumentServices_Screen");
                str = "Barcoded_Document_Services";
                break;
            case 9:
                g0 g0VarT = g0.t();
                h.e(g0VarT, "getDefaultInstance()");
                if (!g0VarT.J(MyCityListDBModel.class).d().isEmpty()) {
                    FragmentKt.findNavController(this).navigate(R.id.myCityDetailFragment);
                    H("MyCity_Screen");
                    str = "MyCity_Services";
                    break;
                } else {
                    FragmentKt.findNavController(this).navigate(R.id.myCityListFragment, BundleKt.bundleOf(new l9.g("mustAtLeastOne", Boolean.TRUE)));
                    H("MyCityList_Screen");
                    str = "MyCityList_Services";
                    break;
                }
            case 10:
                FragmentKt.findNavController(this).navigate(R.id.wonderServiceListFragment);
                H("WonderServices_Screen");
                str = "Wonder_Services";
                break;
            case 11:
                J("ATAM", "edk-atam");
                return;
            case 12:
                FragmentActivity fragmentActivityRequireActivity = requireActivity();
                Intent intent = new Intent("action.mobile.accident");
                intent.putExtra("isCallingFromLogin", false);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                fragmentActivityRequireActivity.startActivity(intent);
                return;
            default:
                return;
        }
        G(str);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController.a
    public final void u() {
        FragmentKt.findNavController(this).navigate(R.id.conceptListFragment);
        H("ConceptServiceList_Screen");
        G("Concept_Services");
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(qe.b bVar) {
        if (bVar != null) {
            try {
                M(bVar.f13601a);
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(qe.b.class);
    }
}
