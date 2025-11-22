package dg;

import androidx.view.result.ActivityResultLauncher;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.main.MainActivity;
import x9.l;

/* loaded from: classes3.dex */
public final class d extends j implements l<v.e, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f4909a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(MainActivity mainActivity) {
        super(1);
        this.f4909a = mainActivity;
    }

    @Override // x9.l
    public final m invoke(v.e eVar) {
        v.e dialog = eVar;
        h.f(dialog, "dialog");
        ActivityResultLauncher<String> activityResultLauncher = this.f4909a.f16568e;
        if (activityResultLauncher == null) {
            h.n("requestPermissionLauncher");
            throw null;
        }
        activityResultLauncher.launch("android.permission.POST_NOTIFICATIONS");
        dialog.dismiss();
        return m.f9594a;
    }
}
