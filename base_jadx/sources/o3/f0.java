package o3;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class f0 extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public Context f11129a;

    /* renamed from: b, reason: collision with root package name */
    public final qd.f f11130b;

    public f0(qd.f fVar) {
        this.f11130b = fVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            qd.f fVar = this.f11130b;
            a1 a1Var = ((z0) fVar.f13574b).f11205b;
            a1Var.f11084c.set(null);
            h4.i iVar = ((r) a1Var).f11186g.f11113n;
            iVar.sendMessage(iVar.obtainMessage(3));
            Dialog dialog = (Dialog) fVar.f13573a;
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
            synchronized (this) {
                Context context2 = this.f11129a;
                if (context2 != null) {
                    context2.unregisterReceiver(this);
                }
                this.f11129a = null;
            }
        }
    }
}
