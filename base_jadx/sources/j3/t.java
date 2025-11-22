package j3;

import android.os.Bundle;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;

/* loaded from: classes.dex */
public final class t implements LoaderManager.LoaderCallbacks<Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SignInHubActivity f7996a;

    public /* synthetic */ t(SignInHubActivity signInHubActivity) {
        this.f7996a = signInHubActivity;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final Loader<Void> onCreateLoader(int r22, Bundle bundle) {
        return new f(this.f7996a, n3.d.a());
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final /* synthetic */ void onLoadFinished(Loader<Void> loader, Void r32) {
        SignInHubActivity signInHubActivity = this.f7996a;
        signInHubActivity.setResult(signInHubActivity.f2968d, signInHubActivity.f2969e);
        signInHubActivity.finish();
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final void onLoaderReset(Loader<Void> loader) {
    }
}
