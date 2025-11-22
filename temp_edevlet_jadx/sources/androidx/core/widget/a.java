package androidx.core.widget;

import android.content.Intent;
import android.os.Build;
import kotlin.jvm.internal.h;
import s1.g;
import tr.gov.turkiye.edevlet.kapisi.ui.splash.SplashActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f965a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f966b;

    public /* synthetic */ a(int r12, Object obj) {
        this.f965a = r12;
        this.f966b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f965a;
        Object obj = this.f966b;
        switch (r02) {
            case 0:
                ((ContentLoadingProgressBar) obj).lambda$new$1();
                break;
            case 1:
                g this$0 = (g) obj;
                h.f(this$0, "this$0");
                this$0.f14846e.clear();
                this$0.notifyDataSetChanged();
                break;
            default:
                SplashActivity this$02 = (SplashActivity) obj;
                int r03 = SplashActivity.f17544a;
                h.f(this$02, "this$0");
                Intent intent = new Intent("action.login.open");
                intent.setFlags(32768);
                if (Build.VERSION.SDK_INT >= 34) {
                    intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                this$02.startActivity(intent);
                this$02.finish();
                break;
        }
    }
}
