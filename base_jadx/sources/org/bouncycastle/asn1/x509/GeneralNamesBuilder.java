package org.bouncycastle.asn1.x509;

import java.util.Vector;

/* loaded from: classes2.dex */
public class GeneralNamesBuilder {
    private Vector names = new Vector();

    public GeneralNamesBuilder addName(GeneralName generalName) {
        this.names.addElement(generalName);
        return this;
    }

    public GeneralNamesBuilder addNames(GeneralNames generalNames) {
        GeneralName[] names = generalNames.getNames();
        for (int r02 = 0; r02 != names.length; r02++) {
            this.names.addElement(names[r02]);
        }
        return this;
    }

    public GeneralNames build() {
        int size = this.names.size();
        GeneralName[] generalNameArr = new GeneralName[size];
        for (int r22 = 0; r22 != size; r22++) {
            generalNameArr[r22] = (GeneralName) this.names.elementAt(r22);
        }
        return new GeneralNames(generalNameArr);
    }
}
