package org.jmrtd;

import net.sf.scuba.smartcards.CardServiceException;

@Deprecated
/* loaded from: classes2.dex */
public class AccessDeniedException extends CardServiceException {
    private static final long serialVersionUID = -7094953658210693249L;
    private final AccessKeySpec bacKey;

    public AccessDeniedException(String str, int r32) {
        this(str, null, r32);
    }

    public AccessDeniedException(String str, AccessKeySpec accessKeySpec, int r32) {
        super(str, r32);
        this.bacKey = accessKeySpec;
    }

    public AccessKeySpec getAccessKey() {
        return this.bacKey;
    }
}
