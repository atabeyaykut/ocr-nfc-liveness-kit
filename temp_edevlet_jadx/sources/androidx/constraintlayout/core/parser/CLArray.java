package androidx.constraintlayout.core.parser;

import java.util.Iterator;

/* loaded from: classes.dex */
public class CLArray extends CLContainer {
    public CLArray(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLArray(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int r82, int r92) {
        StringBuilder sb2 = new StringBuilder();
        String json = toJSON();
        if (r92 > 0 || json.length() + r82 >= CLElement.MAX_LINE) {
            sb2.append("[\n");
            Iterator<CLElement> it = this.mElements.iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                CLElement next = it.next();
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append(",\n");
                }
                addIndent(sb2, CLElement.BASE_INDENT + r82);
                sb2.append(next.toFormattedJSON(CLElement.BASE_INDENT + r82, r92 - 1));
            }
            sb2.append("\n");
            addIndent(sb2, r82);
            sb2.append("]");
        } else {
            sb2.append(json);
        }
        return sb2.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb2 = new StringBuilder(getDebugName() + "[");
        boolean z10 = true;
        for (int r32 = 0; r32 < this.mElements.size(); r32++) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(this.mElements.get(r32).toJSON());
        }
        return ((Object) sb2) + "]";
    }
}
