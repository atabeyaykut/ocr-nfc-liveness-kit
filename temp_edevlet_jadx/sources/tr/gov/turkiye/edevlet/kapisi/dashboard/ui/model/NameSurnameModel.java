package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import ge.e;
import he.a;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import m9.t;
import mc.n;
import org.bouncycastle.i18n.MessageBundle;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemNameSurnameBinding;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/NameSurnameModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemNameSurnameBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", MessageBundle.TITLE_ENTRY, "I", "getTitle", "()I", "setTitle", "(I)V", "", "nameSurname", "Ljava/lang/String;", "getNameSurname", "()Ljava/lang/String;", "setNameSurname", "(Ljava/lang/String;)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class NameSurnameModel extends a<ItemNameSurnameBinding> {
    private String nameSurname = "";
    private int title;

    @Override // he.a
    public void bind(ItemNameSurnameBinding itemNameSurnameBinding) throws IOException {
        String string;
        CharSequence charSequenceSubSequence;
        h.f(itemNameSurnameBinding, "<this>");
        itemNameSurnameBinding.f16298c.setText(this.title);
        String str = this.nameSurname;
        if (str != null) {
            String strG1 = t.g1(n.Y(str, new String[]{" "}), " ", null, null, e.f6702a, 30);
            int length = strG1.length() - 1;
            if (length >= 0) {
                while (true) {
                    int r22 = length - 1;
                    if (!a6.a.t(strG1.charAt(length))) {
                        charSequenceSubSequence = strG1.subSequence(0, length + 1);
                        break;
                    } else if (r22 < 0) {
                        break;
                    } else {
                        length = r22;
                    }
                }
                charSequenceSubSequence = "";
                string = charSequenceSubSequence.toString();
            } else {
                charSequenceSubSequence = "";
                string = charSequenceSubSequence.toString();
            }
        } else {
            string = null;
        }
        itemNameSurnameBinding.f16297b.setText(string);
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_name_surname;
    }

    public final String getNameSurname() {
        return this.nameSurname;
    }

    public final int getTitle() {
        return this.title;
    }

    public final void setNameSurname(String str) {
        this.nameSurname = str;
    }

    public final void setTitle(int r12) {
        this.title = r12;
    }
}
