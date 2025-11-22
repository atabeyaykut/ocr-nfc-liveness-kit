package t1;

import android.content.Intent;
import android.util.Log;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import h6.p0;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements ActivityResultCallback, h5.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15516a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15517b;

    public /* synthetic */ e(int r12, Object obj) {
        this.f15516a = r12;
        this.f15517b = obj;
    }

    @Override // h5.b
    public final Object c(h5.k kVar) {
        CountDownLatch countDownLatch = (CountDownLatch) this.f15517b;
        ExecutorService executorService = p0.f6951a;
        countDownLatch.countDown();
        return null;
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        String str;
        String stringExtra;
        int r02 = this.f15516a;
        Object obj2 = this.f15517b;
        boolean z10 = false;
        switch (r02) {
            case 0:
                g this$0 = (g) obj2;
                int r03 = g.f15520j;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                Collection collectionValues = ((Map) obj).values();
                if ((collectionValues instanceof Collection) && collectionValues.isEmpty()) {
                    z10 = true;
                } else {
                    Iterator it = collectionValues.iterator();
                    while (it.hasNext()) {
                        if (!((Boolean) it.next()).booleanValue()) {
                        }
                    }
                    z10 = true;
                }
                if (z10) {
                    Log.d("ImagePicker", "Write External permission granted");
                    this$0.B();
                    return;
                }
                Log.e("ImagePicker", "Permission not granted");
                l lVar = this$0.f15527h;
                if (lVar != null) {
                    lVar.cancel();
                    return;
                } else {
                    kotlin.jvm.internal.h.n("interactionListener");
                    throw null;
                }
            default:
                ServicePageActivity this$02 = (ServicePageActivity) obj2;
                ActivityResult result = (ActivityResult) obj;
                int r04 = ServicePageActivity.s0;
                kotlin.jvm.internal.h.f(this$02, "this$0");
                kotlin.jvm.internal.h.f(result, "result");
                if (result.getResultCode() != -1) {
                    this$02.E();
                    if (!this$02.C) {
                        this$02.H = false;
                        return;
                    }
                    String str2 = this$02.f16802n;
                    if ((str2 == null || str2.length() == 0) || (str = this$02.f16802n) == null) {
                        return;
                    }
                    this$02.H = false;
                    this$02.v().f16829g.loadUrl(str);
                    this$02.G = true;
                    return;
                }
                Intent data = result.getData();
                if (data != null) {
                    boolean booleanExtra = data.getBooleanExtra("isLoadResultUrl", false);
                    this$02.H = data.getBooleanExtra("shouldLoadReturn", true);
                    this$02.G = true;
                    if (booleanExtra) {
                        stringExtra = data.getStringExtra("url");
                        if (stringExtra == null) {
                            return;
                        }
                    } else {
                        stringExtra = this$02.f16802n;
                        if (stringExtra == null) {
                            return;
                        }
                    }
                    this$02.v().f16829g.loadUrl(stringExtra);
                    return;
                }
                return;
        }
    }
}
