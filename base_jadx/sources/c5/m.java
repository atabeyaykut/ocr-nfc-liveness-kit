package c5;

import android.accounts.AccountManager;
import androidx.annotation.WorkerThread;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class m extends y4 {

    /* renamed from: c, reason: collision with root package name */
    public long f1710c;

    /* renamed from: d, reason: collision with root package name */
    public String f1711d;

    /* renamed from: e, reason: collision with root package name */
    public AccountManager f1712e;
    public Boolean f;

    /* renamed from: g, reason: collision with root package name */
    public long f1713g;

    public m(i4 i4Var) {
        super(i4Var);
    }

    @Override // c5.y4
    public final boolean c() {
        Calendar calendar = Calendar.getInstance();
        this.f1710c = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        this.f1711d = android.support.v4.media.a.i(new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length()), lowerCase, "-", lowerCase2);
        return false;
    }

    @WorkerThread
    public final long g() {
        b();
        return this.f1713g;
    }

    public final long h() {
        d();
        return this.f1710c;
    }

    public final String n() {
        d();
        return this.f1711d;
    }
}
