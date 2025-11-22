package o3;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class a1 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f11083b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f11084c;

    /* renamed from: d, reason: collision with root package name */
    public final h4.i f11085d;

    /* renamed from: e, reason: collision with root package name */
    public final m3.e f11086e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(g gVar) {
        super(gVar);
        m3.e eVar = m3.e.f9944d;
        this.f11084c = new AtomicReference(null);
        this.f11085d = new h4.i(Looper.getMainLooper());
        this.f11086e = eVar;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void b(int r6, int r72, Intent intent) {
        AtomicReference atomicReference = this.f11084c;
        y0 y0Var = (y0) atomicReference.get();
        if (r6 != 1) {
            if (r6 == 2) {
                int r62 = this.f11086e.c(m3.f.f9945a, a());
                if (r62 == 0) {
                    atomicReference.set(null);
                    h4.i iVar = ((r) this).f11186g.f11113n;
                    iVar.sendMessage(iVar.obtainMessage(3));
                    return;
                } else {
                    if (y0Var == null) {
                        return;
                    }
                    if (y0Var.f11202b.f9926b == 18 && r62 == 18) {
                        return;
                    }
                }
            }
        } else if (r72 == -1) {
            atomicReference.set(null);
            h4.i iVar2 = ((r) this).f11186g.f11113n;
            iVar2.sendMessage(iVar2.obtainMessage(3));
            return;
        } else if (r72 == 0) {
            if (y0Var == null) {
                return;
            }
            h(new m3.b(1, intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, y0Var.f11202b.toString()), y0Var.f11201a);
            return;
        }
        if (y0Var != null) {
            h(y0Var.f11202b, y0Var.f11201a);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void c(@Nullable Bundle bundle) {
        if (bundle != null) {
            this.f11084c.set(bundle.getBoolean("resolving_error", false) ? new y0(new m3.b(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void e(Bundle bundle) {
        y0 y0Var = (y0) this.f11084c.get();
        if (y0Var == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", y0Var.f11201a);
        m3.b bVar = y0Var.f11202b;
        bundle.putInt("failed_status", bVar.f9926b);
        bundle.putParcelable("failed_resolution", bVar.f9927c);
    }

    public final void h(m3.b bVar, int r42) {
        this.f11084c.set(null);
        ((r) this).f11186g.f(bVar, r42);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m3.b bVar = new m3.b(13, null);
        y0 y0Var = (y0) this.f11084c.get();
        h(bVar, y0Var == null ? -1 : y0Var.f11201a);
    }
}
