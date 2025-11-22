package org.jmrtd.protocol;

import java.io.Serializable;
import org.jmrtd.AccessKeySpec;

/* loaded from: classes2.dex */
public class BACResult implements Serializable {
    private static final long serialVersionUID = -7114911372181772099L;
    private AccessKeySpec bacKey;
    private SecureMessagingWrapper wrapper;

    public BACResult(AccessKeySpec accessKeySpec, SecureMessagingWrapper secureMessagingWrapper) {
        this.bacKey = accessKeySpec;
        this.wrapper = secureMessagingWrapper;
    }

    public BACResult(SecureMessagingWrapper secureMessagingWrapper) {
        this(null, secureMessagingWrapper);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BACResult bACResult = (BACResult) obj;
        AccessKeySpec accessKeySpec = this.bacKey;
        if (accessKeySpec == null) {
            if (bACResult.bacKey != null) {
                return false;
            }
        } else if (!accessKeySpec.equals(bACResult.bacKey)) {
            return false;
        }
        SecureMessagingWrapper secureMessagingWrapper = this.wrapper;
        SecureMessagingWrapper secureMessagingWrapper2 = bACResult.wrapper;
        if (secureMessagingWrapper == null) {
            if (secureMessagingWrapper2 != null) {
                return false;
            }
        } else if (!secureMessagingWrapper.equals(secureMessagingWrapper2)) {
            return false;
        }
        return true;
    }

    public AccessKeySpec getBACKey() {
        return this.bacKey;
    }

    public SecureMessagingWrapper getWrapper() {
        return this.wrapper;
    }

    public int hashCode() {
        AccessKeySpec accessKeySpec = this.bacKey;
        int r22 = (1303377669 + (accessKeySpec == null ? 0 : accessKeySpec.hashCode())) * 1234567891;
        SecureMessagingWrapper secureMessagingWrapper = this.wrapper;
        return r22 + (secureMessagingWrapper != null ? secureMessagingWrapper.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder("BACResult [bacKey: ");
        Object obj = this.bacKey;
        if (obj == null) {
            obj = "-";
        }
        sb3.append(obj);
        sb2.append(sb3.toString());
        sb2.append(", wrapper: " + this.wrapper);
        sb2.append("]");
        return sb2.toString();
    }
}
