package tr.gov.turkiye.edevlet.kapisi.verification.sms;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.work.PeriodicWorkRequest;
import bi.a;
import c5.y;
import ff.d;
import g4.g;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import org.greenrobot.eventbus.ThreadMode;
import qd.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithCode;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.SMSRequestOperation;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.SMSVerifyOperation;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivitySmsVerificationBinding;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\n"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;", "Lu8/a;", "Lbi/a$a;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSRequestOperation;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SMSVerificationActivity extends u8.a implements a.InterfaceC0050a {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f17705p = 0;

    /* renamed from: b, reason: collision with root package name */
    public gf.b f17706b;

    /* renamed from: e, reason: collision with root package name */
    public CountDownTimer f17709e;

    /* renamed from: g, reason: collision with root package name */
    public bi.a f17710g;

    /* renamed from: h, reason: collision with root package name */
    public String f17711h;

    /* renamed from: j, reason: collision with root package name */
    public String f17712j;

    /* renamed from: k, reason: collision with root package name */
    public String f17713k;

    /* renamed from: l, reason: collision with root package name */
    public String f17714l;

    /* renamed from: m, reason: collision with root package name */
    public long f17715m;

    /* renamed from: n, reason: collision with root package name */
    public String f17716n;

    /* renamed from: c, reason: collision with root package name */
    public final e f17707c = y.v(3, new a(this));

    /* renamed from: d, reason: collision with root package name */
    public final ff.b f17708d = new ff.b(this);
    public long f = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

    public static final class a extends j implements x9.a<ActivitySmsVerificationBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17717a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17717a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivitySmsVerificationBinding invoke() {
            LayoutInflater layoutInflater = this.f17717a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivitySmsVerificationBinding.inflate(layoutInflater);
        }
    }

    public static final class b extends CountDownTimer {
        public b(long j10) {
            super(j10, 1000L);
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            int r02 = SMSVerificationActivity.f17705p;
            SMSVerificationActivity sMSVerificationActivity = SMSVerificationActivity.this;
            sMSVerificationActivity.getClass();
            CountDownTimer countDownTimer = sMSVerificationActivity.f17709e;
            h.c(countDownTimer);
            countDownTimer.cancel();
            sMSVerificationActivity.s().f17622d.setVisibility(8);
            sMSVerificationActivity.s().f17621c.setVisibility(0);
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j10) {
            SMSVerificationActivity sMSVerificationActivity = SMSVerificationActivity.this;
            sMSVerificationActivity.f = j10;
            sMSVerificationActivity.s().f17623e.setProgress((int) (j10 / 1000));
            sMSVerificationActivity.y();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f17708d.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f17708d.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f17708d.b(resources);
        return resources;
    }

    @Override // bi.a.InterfaceC0050a
    public final void h(String otp) {
        h.f(otp, "otp");
        try {
            s().f17620b.setText(otp);
        } catch (Exception unused) {
        }
    }

    @Override // bi.a.InterfaceC0050a
    public final void i() {
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TextView textView;
        String string;
        this.f17708d.d();
        super.onCreate(bundle);
        setContentView(s().f17619a);
        v();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f17711h = extras.getString("uuid");
            this.f17713k = extras.getString("phoneNumber");
            this.f17712j = extras.getString("token");
            this.f17714l = extras.getString("operationType");
            this.f17715m = extras.getLong("timeDuration", 0L);
        }
        y();
        s().f17630m.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(s().f17630m);
        s().f17630m.setNavigationOnClickListener(new be.d(11, this));
        String str = this.f17713k;
        if (str == null || str.length() == 0) {
            s().f17627j.setText(getString(R.string.sms_verification_description_without_number));
            textView = s().f17629l;
            string = getString(R.string.sms_verification_resend_without_number);
        } else {
            s().f17627j.setText(getString(R.string.sms_verification_description, this.f17713k));
            textView = s().f17629l;
            string = getString(R.string.sms_verification_resend, this.f17713k);
        }
        textView.setText(string);
        s().f17626i.setOnClickListener(new nf.a(17, this));
        s().f17624g.setOnClickListener(new zd.a(20, this));
        x();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        bi.a aVar = this.f17710g;
        if (aVar != null) {
            unregisterReceiver(aVar);
        }
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(SMSRequestOperation sMSRequestOperation) {
        String str;
        s().f.setVisibility(8);
        if (sMSRequestOperation == null) {
            str = "error";
        } else {
            if (sMSRequestOperation.getIsSuccess()) {
                v();
                x();
                y();
                qd.b.b().l(SMSRequestOperation.class);
            }
            str = "warning";
        }
        u(R.string.toast_error, str);
        qd.b.b().l(SMSRequestOperation.class);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() throws SecurityException {
        super.onResume();
        if (!qd.b.b().e(this)) {
            qd.b.b().k(this);
        }
        this.f17708d.e(this);
        if (Build.VERSION.SDK_INT >= 26) {
            s().f17620b.setAutofillHints(new String[]{"0"});
        }
    }

    public final ActivitySmsVerificationBinding s() {
        return (ActivitySmsVerificationBinding) this.f17707c.getValue();
    }

    public final void t(String str) {
        int r02 = ke.d.f8929a;
        ConstraintLayout constraintLayout = s().f17625h;
        h.e(constraintLayout, "mSMSVerificationBinding.smsVerificationContainer");
        ke.d dVarB = d.a.b(constraintLayout, str, ContextCompat.getColor(this, R.color.error_color));
        if (dVarB != null) {
            dVarB.show();
        }
    }

    public final void u(int r52, String str) {
        int r6;
        int r02;
        boolean zA = h.a(str, "success");
        int r12 = R.color.white;
        if (zA) {
            r6 = R.color.success_color;
            r02 = R.drawable.toast_success;
        } else if (h.a(str, "warning")) {
            r6 = R.color.warning_color;
            r12 = R.color.black;
            r02 = R.drawable.toast_warning;
        } else {
            r6 = R.color.error_color;
            r02 = R.drawable.toast_error;
        }
        int r22 = ke.d.f8929a;
        ConstraintLayout constraintLayout = s().f17625h;
        h.e(constraintLayout, "mSMSVerificationBinding.smsVerificationContainer");
        ke.d dVarD = d.a.d(constraintLayout, r52, r02, ContextCompat.getColor(this, r6), ContextCompat.getColor(this, r12));
        if (dVarD != null) {
            dVarD.show();
        }
    }

    public final void v() {
        try {
            bi.a aVar = new bi.a();
            this.f17710g = aVar;
            aVar.f1339a = this;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.auth.api.phone.SMS_RETRIEVED");
            if (Build.VERSION.SDK_INT >= 33) {
                registerReceiver(this.f17710g, intentFilter, 2);
            } else {
                registerReceiver(this.f17710g, intentFilter);
            }
            new g(this).c(1, new g4.h());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void x() {
        s().f17622d.setVisibility(0);
        s().f17621c.setVisibility(8);
        long j10 = this.f17715m;
        if (j10 == 0) {
            j10 = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
        }
        this.f = j10;
        s().f17623e.setMax((int) this.f);
        s().f17623e.setProgress((int) this.f);
        this.f17709e = new b(this.f * 1000).start();
    }

    public final void y() {
        long j10 = this.f;
        long j11 = 1000;
        int r52 = ((int) (j10 / j11)) / 60;
        int r12 = ((int) (j10 / j11)) % 60;
        String strD = r52 < 10 ? android.support.v4.media.a.d("0", r52) : String.valueOf(r52);
        String strD2 = r12 < 10 ? android.support.v4.media.a.d("0", r12) : String.valueOf(r12);
        s().f17628k.setText(strD + ':' + strD2);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(SMSVerifyOperation sMSVerifyOperation) {
        s().f.setVisibility(8);
        s().f17622d.setVisibility(0);
        if (sMSVerifyOperation == null) {
            u(R.string.toast_error, "error");
        } else if (sMSVerifyOperation.getIsSuccess()) {
            Intent intent = new Intent(this, (Class<?>) CardVerificationResultActivity.class);
            intent.putExtra("isSuccess", true);
            intent.putExtra("operationType", this.f17714l);
            startActivity(intent);
            finish();
        } else {
            ErrorResult<Object> exception = sMSVerifyOperation.getException();
            Throwable throwable = exception != null ? exception.getThrowable() : null;
            if (throwable instanceof ServiceErrorExceptionWithMessage) {
                t(((ServiceErrorExceptionWithMessage) throwable).getErrorMessage());
            } else if (throwable instanceof ServiceErrorExceptionWithCode) {
                ServiceErrorExceptionWithCode serviceErrorExceptionWithCode = (ServiceErrorExceptionWithCode) throwable;
                String errorMessage = serviceErrorExceptionWithCode.getErrorMessage();
                if (h.a(serviceErrorExceptionWithCode.getErrorCode(), "15")) {
                    h.f(errorMessage, "errorMessage");
                    Intent intent2 = new Intent("action.sms.verification.block");
                    intent2.putExtra("message", errorMessage);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    startActivity(intent2);
                    finish();
                } else {
                    t(errorMessage);
                }
            } else {
                u(R.string.toast_error, "error");
            }
        }
        qd.b.b().l(SMSVerifyOperation.class);
    }
}
