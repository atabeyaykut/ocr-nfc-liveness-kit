package d0;

import android.content.Context;
import com.airbnb.lottie.LottieAnimationView;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class e implements Callable<r<f>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4518a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LottieAnimationView f4519b;

    public e(LottieAnimationView lottieAnimationView, String str) {
        this.f4519b = lottieAnimationView;
        this.f4518a = str;
    }

    @Override // java.util.concurrent.Callable
    public final r<f> call() throws Exception {
        LottieAnimationView lottieAnimationView = this.f4519b;
        boolean z10 = lottieAnimationView.f2682p;
        Context context = lottieAnimationView.getContext();
        String str = this.f4518a;
        if (!z10) {
            return g.b(context, str, null);
        }
        HashMap map = g.f4534a;
        return g.b(context, str, "asset_" + str);
    }
}
