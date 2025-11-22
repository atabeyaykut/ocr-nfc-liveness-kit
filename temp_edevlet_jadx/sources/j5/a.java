package j5;

import com.google.android.gms.internal.vision.r;
import com.google.android.gms.vision.clearcut.DynamiteClearcutLogger;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8001a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f8002b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DynamiteClearcutLogger f8003c;

    public a(DynamiteClearcutLogger dynamiteClearcutLogger, int r22, r rVar) {
        this.f8003c = dynamiteClearcutLogger;
        this.f8001a = r22;
        this.f8002b = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8003c.zzc.zza(this.f8001a, this.f8002b);
    }
}
