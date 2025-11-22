package tr.gov.turkiye.edevlet.kapisi.ui.splash;

import android.os.Bundle;
import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.widget.a;
import kotlin.Metadata;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/splash/SplashActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "app_v21Release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SplashActivity extends AppCompatActivity {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f17544a = 0;

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_splash);
        new Handler().postDelayed(new a(2, this), 850L);
    }
}
