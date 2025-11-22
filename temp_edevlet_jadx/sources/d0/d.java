package d0;

import android.content.Context;
import com.airbnb.lottie.LottieAnimationView;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class d implements Callable<r<f>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4516a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LottieAnimationView f4517b;

    public d(LottieAnimationView lottieAnimationView, int r22) {
        this.f4517b = lottieAnimationView;
        this.f4516a = r22;
    }

    @Override // java.util.concurrent.Callable
    public final r<f> call() throws Exception {
        LottieAnimationView lottieAnimationView = this.f4517b;
        boolean z10 = lottieAnimationView.f2682p;
        Context context = lottieAnimationView.getContext();
        int r22 = this.f4516a;
        return z10 ? g.e(context, r22, g.h(r22, context)) : g.e(context, r22, null);
    }
}
