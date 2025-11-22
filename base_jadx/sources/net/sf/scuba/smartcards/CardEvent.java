package net.sf.scuba.smartcards;

import java.util.EventObject;

/* loaded from: classes2.dex */
public class CardEvent extends EventObject {
    public static final int INSERTED = 1;
    public static final int REMOVED = 0;
    private static final long serialVersionUID = -5645277246646615351L;
    private transient CardService service;
    private int type;

    public CardEvent(int r12, CardService cardService) {
        super(cardService);
        this.type = r12;
        this.service = cardService;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        CardEvent cardEvent = (CardEvent) obj;
        return this.type == cardEvent.type && this.service.equals(cardEvent.service);
    }

    public CardService getService() {
        return this.service;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type * 7) + (this.service.hashCode() * 5);
    }

    @Override // java.util.EventObject
    public String toString() {
        StringBuilder sb2;
        int r02 = this.type;
        if (r02 == 0) {
            sb2 = new StringBuilder("Card removed from ");
        } else {
            if (r02 != 1) {
                throw new IllegalStateException("Unknown event type " + this.type);
            }
            sb2 = new StringBuilder("Card inserted in ");
        }
        sb2.append(this.service);
        return sb2.toString();
    }
}
