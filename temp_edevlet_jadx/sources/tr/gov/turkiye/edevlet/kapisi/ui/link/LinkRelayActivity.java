package tr.gov.turkiye.edevlet.kapisi.ui.link;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.a;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/link/LinkRelayActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "app_v21Release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class LinkRelayActivity extends AppCompatActivity {
    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_link);
        Intent intent = getIntent();
        h.e(intent, "intent");
        onNewIntent(intent);
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        h.f(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        String action = intent.getAction();
        Uri data = intent.getData();
        if (!h.a("android.intent.action.VIEW", action) || data == null) {
            return;
        }
        try {
            Intent intent2 = new Intent("action.login.open");
            intent2.setFlags(32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            intent2.setFlags(67141632);
            if (data.getPathSegments().size() == 2) {
                intent2.putExtra("isAppIndexing", true);
                intent2.putExtra("serviceType", data.getPathSegments().get(0));
                intent2.putExtra("serviceId", data.getPathSegments().get(1));
            }
            startActivity(intent2);
            finish();
        } catch (Exception unused) {
            Intent intentB = a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            intentB.setFlags(67141632);
            startActivity(intentB);
            finish();
        }
    }
}
