package be;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldModel;

/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f1237a;

    /* renamed from: b, reason: collision with root package name */
    public final EditText f1238b;

    /* renamed from: c, reason: collision with root package name */
    public final BarcodeVerifyFieldModel f1239c;

    public i(TextInputLayout textInputLayout, TextInputEditText textInputEditText, BarcodeVerifyFieldModel barcodeVerifyFieldModel) {
        this.f1237a = textInputLayout;
        this.f1238b = textInputEditText;
        this.f1239c = barcodeVerifyFieldModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return kotlin.jvm.internal.h.a(this.f1237a, iVar.f1237a) && kotlin.jvm.internal.h.a(this.f1238b, iVar.f1238b) && kotlin.jvm.internal.h.a(this.f1239c, iVar.f1239c);
    }

    public final int hashCode() {
        return this.f1239c.hashCode() + ((this.f1238b.hashCode() + (this.f1237a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ManualDynamicFieldValidation(parentView=" + this.f1237a + ", editView=" + this.f1238b + ", field=" + this.f1239c + ')';
    }
}
