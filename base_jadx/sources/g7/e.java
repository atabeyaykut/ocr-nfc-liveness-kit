package g7;

import android.content.Intent;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final /* synthetic */ g f5849a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final /* synthetic */ Intent f5850b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final /* synthetic */ h5.l f5851c;

    public /* synthetic */ e(@NonNull g gVar, @NonNull Intent intent, @NonNull h5.l lVar) {
        this.f5849a = gVar;
        this.f5850b = intent;
        this.f5851c = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Intent intent = this.f5850b;
        h5.l lVar = this.f5851c;
        g gVar = this.f5849a;
        gVar.getClass();
        try {
            gVar.c(intent);
        } finally {
            lVar.b(null);
        }
    }
}
