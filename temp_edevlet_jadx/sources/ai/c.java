package ai;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.FragmentCardPreviewBinding;
import tr.gov.turkiye.edevlet.kapisi.verification.sms.SMSVerificationActivity;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lai/c;", "Lee/a;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class c extends ee.a {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f334m = {androidx.room.util.a.b(c.class, "mCardPreviewFragmentBinding", "getMCardPreviewFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardPreviewBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f335a;

    /* renamed from: b, reason: collision with root package name */
    public Context f336b;

    /* renamed from: c, reason: collision with root package name */
    public String f337c;

    /* renamed from: d, reason: collision with root package name */
    public String f338d;

    /* renamed from: e, reason: collision with root package name */
    public String f339e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f340g;

    /* renamed from: h, reason: collision with root package name */
    public String f341h;

    /* renamed from: j, reason: collision with root package name */
    public String f342j;

    /* renamed from: k, reason: collision with root package name */
    public String f343k;

    /* renamed from: l, reason: collision with root package name */
    public String f344l;

    public /* synthetic */ class a extends g implements l<View, FragmentCardPreviewBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f345a = new a();

        public a() {
            super(1, FragmentCardPreviewBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardPreviewBinding;", 0);
        }

        @Override // x9.l
        public final FragmentCardPreviewBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentCardPreviewBinding.bind(p02);
        }
    }

    public c() {
        super(R.layout.fragment_card_preview);
        this.f335a = d0.C(this, a.f345a);
    }

    public final FragmentCardPreviewBinding E() {
        return (FragmentCardPreviewBinding) this.f335a.a(this, f334m[0]);
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int r32, int r42, Intent intent) {
        FragmentActivity activity;
        super.onActivityResult(r32, r42, intent);
        if (r42 == -1 && r32 == 266) {
            if (h.a(intent != null ? Boolean.valueOf(intent.getBooleanExtra("smsRequired", false)) : null, Boolean.TRUE)) {
                Intent intent2 = new Intent(getActivity(), (Class<?>) SMSVerificationActivity.class);
                intent2.putExtra("uuid", intent.getStringExtra("uuid"));
                intent2.putExtra("token", intent.getStringExtra("token"));
                intent2.putExtra("phoneNumber", intent.getStringExtra("phoneNumber"));
                intent2.putExtra("operationType", this.f341h);
                intent2.putExtra("timeDuration", intent.getLongExtra("timeDuration", 300L));
                FragmentActivity activity2 = getActivity();
                if (activity2 != null) {
                    activity2.startActivity(intent2);
                }
                activity = getActivity();
                if (activity == null) {
                    return;
                }
            } else {
                Intent intent3 = new Intent(getActivity(), (Class<?>) CardVerificationResultActivity.class);
                intent3.putExtra("isSuccess", true);
                intent3.putExtra("operationType", this.f341h);
                FragmentActivity activity3 = getActivity();
                if (activity3 != null) {
                    activity3.startActivity(intent3);
                }
                activity = getActivity();
                if (activity == null) {
                    return;
                }
            }
            activity.finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f336b = view.getContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f337c = arguments.getString("uuid");
            this.f338d = arguments.getString("challenge");
            this.f339e = arguments.getString("token");
            this.f341h = arguments.getString("verificationCode");
            this.f = arguments.getString("phoneNumber");
            this.f340g = arguments.getString("countryCode");
            this.f342j = arguments.getString("serialNo");
            this.f343k = arguments.getString("birthDate");
            this.f344l = arguments.getString("validationDate");
        }
        String str = this.f;
        if (str == null || str.length() == 0) {
            E().f17646c.setVisibility(8);
        } else {
            E().f17646c.setVisibility(0);
            E().f17648e.setText(this.f340g + this.f);
        }
        E().f17647d.setText(this.f343k);
        E().f.setText(this.f342j);
        E().f17649g.setText(this.f344l);
        E().f17645b.setOnClickListener(new xf.d(18, this));
    }
}
