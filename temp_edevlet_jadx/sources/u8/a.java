package u8;

import android.content.ComponentCallbacks2;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import b8.f;
import t8.c;
import t8.d;

/* loaded from: classes2.dex */
public abstract class a extends AppCompatActivity implements d {

    /* renamed from: a, reason: collision with root package name */
    public c<Object> f17905a;

    @Override // t8.d
    public final c c() {
        return this.f17905a;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        ComponentCallbacks2 application = getApplication();
        if (!(application instanceof d)) {
            throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), d.class.getCanonicalName()));
        }
        d dVar = (d) application;
        c cVarC = dVar.c();
        f.o(cVarC, "%s.androidInjector() returned null", dVar.getClass());
        cVarC.a(this);
        super.onCreate(bundle);
    }
}
