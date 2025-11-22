package fg;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.fragment.app.FragmentActivity;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.common.worker.logout.LogoutWorker;
import tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment;

/* loaded from: classes3.dex */
public final class b extends kotlin.jvm.internal.j implements x9.l<v.e, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f5624a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProfileFragment f5625b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, ProfileFragment profileFragment) {
        super(1);
        this.f5624a = context;
        this.f5625b = profileFragment;
    }

    @Override // x9.l
    public final m invoke(v.e eVar) {
        v.e dialog = eVar;
        kotlin.jvm.internal.h.f(dialog, "dialog");
        try {
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(LogoutWorker.class).build();
            kotlin.jvm.internal.h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilder<LogoutWorker>().build()");
            WorkManager.getInstance(this.f5624a).enqueue(oneTimeWorkRequestBuild);
        } catch (Exception unused) {
        }
        Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
        if (Build.VERSION.SDK_INT >= 34) {
            intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        ProfileFragment profileFragment = this.f5625b;
        profileFragment.startActivity(intentB);
        FragmentActivity activity = profileFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
        dialog.dismiss();
        return m.f9594a;
    }
}
