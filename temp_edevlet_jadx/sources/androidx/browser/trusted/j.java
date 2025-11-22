package androidx.browser.trusted;

import android.content.Context;
import android.net.Uri;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.DispatchQueue;
import da.m;
import java.util.Iterator;
import ng.k;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f451a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f452b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f453c;

    public /* synthetic */ j(int r12, Object obj, Object obj2) {
        this.f451a = r12;
        this.f452b = obj;
        this.f453c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f451a;
        Object obj = this.f453c;
        Object obj2 = this.f452b;
        switch (r02) {
            case 0:
                ((TrustedWebActivityServiceConnectionPool) obj2).lambda$connect$0((Uri) obj);
                break;
            case 1:
                ((Camera2CameraControl) obj2).lambda$clearCaptureRequestOptions$5((CallbackToFutureAdapter.Completer) obj);
                break;
            case 2:
                DispatchQueue.m23dispatchAndEnqueue$lambda2$lambda1((DispatchQueue) obj2, (Runnable) obj);
                break;
            case 3:
                ff.b this$0 = (ff.b) obj2;
                Context context = (Context) obj;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                kotlin.jvm.internal.h.f(context, "$context");
                this$0.a(context);
                if (this$0.f5621b) {
                    Iterator<ff.e> it = this$0.f5623d.iterator();
                    while (it.hasNext()) {
                        it.next().a();
                    }
                    this$0.f5621b = false;
                    break;
                }
                break;
            default:
                String query = (String) obj2;
                SearchFragment this$02 = (SearchFragment) obj;
                m<Object>[] mVarArr = SearchFragment.f16707s;
                kotlin.jvm.internal.h.f(query, "$query");
                kotlin.jvm.internal.h.f(this$02, "this$0");
                boolean zA = kotlin.jvm.internal.h.a(query, this$02.f16718m);
                l9.e eVar = this$02.f16712e;
                if (!zA) {
                    this$02.I();
                    this$02.f16718m = query;
                    ((k) eVar.getValue()).d(query);
                    break;
                } else if (this$02.f16719n) {
                    this$02.I();
                    this$02.f16718m = query;
                    ((k) eVar.getValue()).d(query);
                    this$02.f16719n = false;
                    break;
                }
                break;
        }
    }
}
