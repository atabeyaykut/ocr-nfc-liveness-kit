package tr.gov.turkiye.edevlet.kapisi.data.section;

import io.realm.h2;
import io.realm.internal.n;
import io.realm.s0;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;", "Lio/realm/s0;", "", "code", "I", "getCode", "()I", "setCode", "(I)V", "", "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class SectionListModelRealm implements s0, h2 {
    private int code;
    private String name;

    /* JADX WARN: Multi-variable type inference failed */
    public SectionListModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$name("");
    }

    public final int getCode() {
        return getCode();
    }

    public final String getName() {
        return getName();
    }

    /* renamed from: realmGet$code, reason: from getter */
    public int getCode() {
        return this.code;
    }

    /* renamed from: realmGet$name, reason: from getter */
    public String getName() {
        return this.name;
    }

    public void realmSet$code(int r12) {
        this.code = r12;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public final void setCode(int r12) {
        realmSet$code(r12);
    }

    public final void setName(String str) {
        h.f(str, "<set-?>");
        realmSet$name(str);
    }
}
