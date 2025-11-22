package z3;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;

/* loaded from: classes.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f19809a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f19810b;

    public h(Context context, Intent intent) {
        this.f19809a = context;
        this.f19810b = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f19809a.startActivity(this.f19810b);
        } catch (ActivityNotFoundException e10) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e10);
        }
    }
}
