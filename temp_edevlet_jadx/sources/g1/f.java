package g1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import q1.l;
import v0.h;
import v0.j;
import x0.w;

/* loaded from: classes.dex */
public final class f implements j<Uri, Drawable> {

    /* renamed from: b, reason: collision with root package name */
    public static final v0.g<Resources.Theme> f5789b = new v0.g<>("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, v0.g.f18201e);

    /* renamed from: a, reason: collision with root package name */
    public final Context f5790a;

    public f(Context context) {
        this.f5790a = context.getApplicationContext();
    }

    @Override // v0.j
    public final boolean a(@NonNull Uri uri, @NonNull h hVar) throws IOException {
        return uri.getScheme().equals("android.resource");
    }

    @Override // v0.j
    @Nullable
    public final /* bridge */ /* synthetic */ w<Drawable> b(@NonNull Uri uri, int r22, int r32, @NonNull h hVar) throws IOException {
        return c(uri, hVar);
    }

    @Nullable
    public final w c(@NonNull Uri uri, @NonNull h hVar) throws PackageManager.NameNotFoundException, NumberFormatException {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        Context context = this.f5790a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e10) {
                if (!authority.contains(context.getPackageName())) {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e10);
                }
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: " + uri);
            }
        } else {
            if (pathSegments.size() != 1) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e11) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e11);
            }
        }
        Resources.Theme theme = (Resources.Theme) hVar.c(f5789b);
        l.a("Can't get a theme from another package", contextCreatePackageContext.getPackageName().equals(authority) || theme == null);
        Drawable drawableA = theme == null ? b.a(context, contextCreatePackageContext, identifier, null) : b.a(context, context, identifier, theme);
        if (drawableA != null) {
            return new e(drawableA);
        }
        return null;
    }
}
