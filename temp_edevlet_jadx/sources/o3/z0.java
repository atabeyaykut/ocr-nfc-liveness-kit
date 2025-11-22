package o3;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.widget.ProgressBar;
import androidx.annotation.MainThread;
import com.google.android.gms.common.api.GoogleApiActivity;

/* loaded from: classes.dex */
public final class z0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final y0 f11204a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a1 f11205b;

    public z0(r rVar, y0 y0Var) {
        this.f11205b = rVar;
        this.f11204a = y0Var;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (this.f11205b.f11083b) {
            m3.b bVar = this.f11204a.f11202b;
            if ((bVar.f9926b == 0 || bVar.f9927c == null) ? false : true) {
                a1 a1Var = this.f11205b;
                g gVar = a1Var.f2992a;
                Activity activityA = a1Var.a();
                PendingIntent pendingIntent = bVar.f9927c;
                r3.r.i(pendingIntent);
                int r52 = this.f11204a.f11201a;
                int r6 = GoogleApiActivity.f2970b;
                Intent intent = new Intent(activityA, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", pendingIntent);
                intent.putExtra("failing_client_id", r52);
                intent.putExtra("notify_manager", false);
                gVar.startActivityForResult(intent, 1);
                return;
            }
            a1 a1Var2 = this.f11205b;
            if (a1Var2.f11086e.b(a1Var2.a(), bVar.f9926b, null) != null) {
                a1 a1Var3 = this.f11205b;
                m3.e eVar = a1Var3.f11086e;
                Activity activityA2 = a1Var3.a();
                a1 a1Var4 = this.f11205b;
                eVar.h(activityA2, a1Var4.f2992a, bVar.f9926b, a1Var4);
                return;
            }
            if (bVar.f9926b != 18) {
                this.f11205b.h(bVar, this.f11204a.f11201a);
                return;
            }
            a1 a1Var5 = this.f11205b;
            m3.e eVar2 = a1Var5.f11086e;
            Activity activityA3 = a1Var5.a();
            a1 a1Var6 = this.f11205b;
            eVar2.getClass();
            ProgressBar progressBar = new ProgressBar(activityA3, null, R.attr.progressBarStyleLarge);
            progressBar.setIndeterminate(true);
            progressBar.setVisibility(0);
            AlertDialog.Builder builder = new AlertDialog.Builder(activityA3);
            builder.setView(progressBar);
            builder.setMessage(r3.a0.c(18, activityA3));
            builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
            AlertDialog alertDialogCreate = builder.create();
            m3.e.f(activityA3, alertDialogCreate, "GooglePlayServicesUpdatingDialog", a1Var6);
            a1 a1Var7 = this.f11205b;
            m3.e eVar3 = a1Var7.f11086e;
            Context applicationContext = a1Var7.a().getApplicationContext();
            qd.f fVar = new qd.f(this, alertDialogCreate);
            eVar3.getClass();
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            f0 f0Var = new f0(fVar);
            int r53 = h4.g.f6837a;
            int r54 = Build.VERSION.SDK_INT;
            if (r54 >= 33 || Build.VERSION.CODENAME.charAt(0) == 'T') {
                applicationContext.registerReceiver(f0Var, intentFilter, true == (r54 >= 33 || Build.VERSION.CODENAME.charAt(0) == 'T') ? 2 : 0);
            } else {
                applicationContext.registerReceiver(f0Var, intentFilter);
            }
            f0Var.f11129a = applicationContext;
            if (m3.j.c(applicationContext)) {
                return;
            }
            a1 a1Var8 = this.f11205b;
            a1Var8.f11084c.set(null);
            h4.i iVar = ((r) a1Var8).f11186g.f11113n;
            iVar.sendMessage(iVar.obtainMessage(3));
            AlertDialog alertDialog = alertDialogCreate;
            if (alertDialog.isShowing()) {
                alertDialog.dismiss();
            }
            synchronized (f0Var) {
                Context context = f0Var.f11129a;
                if (context != null) {
                    context.unregisterReceiver(f0Var);
                }
                f0Var.f11129a = null;
            }
        }
    }
}
