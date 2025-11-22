package tr.gov.turkiye.edevlet.kapisi.verification.identity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import c5.y;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.DateValidatorPointBackward;
import com.google.android.material.datepicker.DateValidatorPointForward;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener;
import da.m;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import org.jmrtd.lds.icao.MRZInfo;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.FragmentCardInfoBinding;
import tr.gov.turkiye.edevlet.kapisi.verification.identity.CardInfoFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.CardOCRScanActivity;
import v.e;
import x9.l;
import xf.d;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;", "Lee/a;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardInfoFragment extends ee.a {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17653j = {androidx.room.util.a.b(CardInfoFragment.class, "mCardInfoFragmentBinding", "getMCardInfoFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17654a;

    /* renamed from: b, reason: collision with root package name */
    public Context f17655b;

    /* renamed from: c, reason: collision with root package name */
    public String f17656c;

    /* renamed from: d, reason: collision with root package name */
    public String f17657d;

    /* renamed from: e, reason: collision with root package name */
    public String f17658e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f17659g;

    /* renamed from: h, reason: collision with root package name */
    public String f17660h;

    public /* synthetic */ class a extends g implements l<View, FragmentCardInfoBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f17661a = new a();

        public a() {
            super(1, FragmentCardInfoBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;", 0);
        }

        @Override // x9.l
        public final FragmentCardInfoBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentCardInfoBinding.bind(p02);
        }
    }

    public static final class b extends j implements l<e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f17662a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ CardInfoFragment f17663b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, CardInfoFragment cardInfoFragment) {
            super(1);
            this.f17662a = context;
            this.f17663b = cardInfoFragment;
        }

        @Override // x9.l
        public final l9.m invoke(e eVar) {
            e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", this.f17662a.getPackageName(), null));
            this.f17663b.startActivity(intent);
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public static final class c extends j implements l<e, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f17664a = new c();

        public c() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(e eVar) {
            e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            return l9.m.f9594a;
        }
    }

    public CardInfoFragment() {
        super(R.layout.fragment_card_info);
        this.f17654a = d0.C(this, a.f17661a);
    }

    public final FragmentCardInfoBinding E() {
        return (FragmentCardInfoBinding) this.f17654a.a(this, f17653j[0]);
    }

    public final void F(int r6) {
        Context context = this.f17655b;
        if (context != null) {
            e eVar = new e(context);
            e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.permission_id_scan_camera_rationale, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new b(context, this), 2);
            e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), c.f17664a);
            eVar.show();
        }
    }

    public final void G() {
        startActivityForResult(new Intent(getActivity(), (Class<?>) CardOCRScanActivity.class), 233);
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int r12, int r13, Intent intent) {
        String str;
        String str2;
        super.onActivityResult(r12, r13, intent);
        if (r13 == -1 && r12 == 233) {
            Serializable serializableExtra = intent != null ? intent.getSerializableExtra("MRZ_RESULT") : null;
            h.d(serializableExtra, "null cannot be cast to non-null type org.jmrtd.lds.icao.MRZInfo");
            MRZInfo mRZInfo = (MRZInfo) serializableExtra;
            String dateOfBirth = mRZInfo.getDateOfBirth();
            h.e(dateOfBirth, "mrzInfo.dateOfBirth");
            boolean z10 = true;
            int r02 = Calendar.getInstance().get(1) - 2000;
            String strSubstring = dateOfBirth.substring(0, 2);
            h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strConcat = (Integer.parseInt(strSubstring) > r02 ? "19" : "20").concat(dateOfBirth);
            if (strConcat == null) {
                str = null;
            } else {
                try {
                    str = new SimpleDateFormat("dd.MM.yyyy").format(new SimpleDateFormat("yyyyMMdd").parse(strConcat));
                } catch (ParseException unused) {
                }
            }
            if (str == null || str.length() == 0) {
                str = "";
            }
            String dateOfExpiry = mRZInfo.getDateOfExpiry();
            h.e(dateOfExpiry, "mrzInfo.dateOfExpiry");
            String strSubstring2 = dateOfExpiry.substring(0, 2);
            h.e(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            String strConcat2 = (Integer.parseInt(strSubstring2) < 70 ? "20" : "19").concat(dateOfExpiry);
            if (strConcat2 == null) {
                str2 = null;
            } else {
                try {
                    str2 = new SimpleDateFormat("dd.MM.yyyy").format(new SimpleDateFormat("yyyyMMdd").parse(strConcat2));
                } catch (ParseException unused2) {
                }
            }
            if (str2 != null && str2.length() != 0) {
                z10 = false;
            }
            String str3 = z10 ? "" : str2;
            E().f17642i.setError(null);
            E().f17641h.setError(null);
            E().f17643j.setError(null);
            E().f17638d.setText(str);
            E().f.setText(str3);
            E().f17639e.setText(mRZInfo.getDocumentNumber());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onRequestPermissionsResult(int r22, String[] permissions, int[] grantResults) {
        h.f(permissions, "permissions");
        h.f(grantResults, "grantResults");
        super.onRequestPermissionsResult(r22, permissions, grantResults);
        if (r22 == 0) {
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                G();
            } else if (td.a.c(this, (String[]) Arrays.copyOf(y.f2139s, 1))) {
                F(R.string.permission_id_scan_camera_rationale);
            } else {
                F(R.string.permission_id_scan_camera_rationale);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f17655b = view.getContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f17656c = arguments.getString("uuid");
            this.f17657d = arguments.getString("challenge");
            this.f17658e = arguments.getString("token");
            this.f17660h = arguments.getString("verificationCode");
            this.f = arguments.getString("phoneNumber");
            this.f17659g = arguments.getString("countryCode");
        }
        CalendarConstraints.Builder validator = new CalendarConstraints.Builder().setValidator(DateValidatorPointForward.now());
        h.e(validator, "Builder()\n              …idatorPointForward.now())");
        CalendarConstraints.Builder validator2 = new CalendarConstraints.Builder().setValidator(DateValidatorPointBackward.now());
        h.e(validator2, "Builder()\n              …datorPointBackward.now())");
        MaterialDatePicker.Builder<Long> builderDatePicker = MaterialDatePicker.Builder.datePicker();
        h.e(builderDatePicker, "datePicker()");
        MaterialDatePicker.Builder<Long> builderDatePicker2 = MaterialDatePicker.Builder.datePicker();
        h.e(builderDatePicker2, "datePicker()");
        builderDatePicker.setCalendarConstraints(validator2.build());
        builderDatePicker2.setCalendarConstraints(validator.build());
        builderDatePicker.setTitleText(R.string.picker_birth_date);
        builderDatePicker2.setTitleText(R.string.picker_validation_date);
        builderDatePicker.setInputMode(0);
        builderDatePicker2.setInputMode(0);
        MaterialDatePicker<Long> materialDatePickerBuild = builderDatePicker.build();
        h.e(materialDatePickerBuild, "birthBuilder.build()");
        MaterialDatePicker<Long> materialDatePickerBuild2 = builderDatePicker2.build();
        h.e(materialDatePickerBuild2, "validationBuilder.build()");
        materialDatePickerBuild.addOnPositiveButtonClickListener(new MaterialPickerOnPositiveButtonClickListener() { // from class: yh.d
            @Override // com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener
            public final void onPositiveButtonClick(Object obj) {
                m<Object>[] mVarArr = CardInfoFragment.f17653j;
                CardInfoFragment this$0 = this.f19727a;
                h.f(this$0, "this$0");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd.MM.yyyy", Locale.US);
                h.d(obj, "null cannot be cast to non-null type kotlin.Long");
                this$0.E().f17638d.setText(simpleDateFormat.format(new Date(((Long) obj).longValue())));
            }
        });
        materialDatePickerBuild.addOnNegativeButtonClickListener(new hh.b(1));
        materialDatePickerBuild.addOnCancelListener(new DialogInterface.OnCancelListener() { // from class: yh.e
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                m<Object>[] mVarArr = CardInfoFragment.f17653j;
                yd.a.f19652a.c("Cancel", new Object[0]);
            }
        });
        materialDatePickerBuild2.addOnPositiveButtonClickListener(new MaterialPickerOnPositiveButtonClickListener() { // from class: yh.a
            @Override // com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener
            public final void onPositiveButtonClick(Object obj) {
                m<Object>[] mVarArr = CardInfoFragment.f17653j;
                CardInfoFragment this$0 = this.f19726a;
                h.f(this$0, "this$0");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd.MM.yyyy", Locale.US);
                h.d(obj, "null cannot be cast to non-null type kotlin.Long");
                this$0.E().f.setText(simpleDateFormat.format(new Date(((Long) obj).longValue())));
            }
        });
        materialDatePickerBuild2.addOnNegativeButtonClickListener(new View.OnClickListener() { // from class: yh.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m<Object>[] mVarArr = CardInfoFragment.f17653j;
                yd.a.f19652a.c("Negative", new Object[0]);
            }
        });
        materialDatePickerBuild2.addOnCancelListener(new DialogInterface.OnCancelListener() { // from class: yh.c
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                m<Object>[] mVarArr = CardInfoFragment.f17653j;
                yd.a.f19652a.c("Cancel", new Object[0]);
            }
        });
        int r22 = 3;
        E().f17638d.setOnClickListener(new tf.c(r22, this, materialDatePickerBuild));
        E().f.setOnClickListener(new cg.b(r22, this, materialDatePickerBuild2));
        E().f17640g.setOnClickListener(new d(16, this));
        E().f17636b.setOnClickListener(new be.d(9, this));
    }
}
