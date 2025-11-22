package org.bouncycastle.asn1.x500.style;

import androidx.camera.camera2.internal.c;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.X500NameStyle;
import org.bouncycastle.i18n.MessageBundle;

/* loaded from: classes2.dex */
public class RFC4519Style extends AbstractX500NameStyle {
    private static final Hashtable DefaultLookUp;
    private static final Hashtable DefaultSymbols;
    public static final X500NameStyle INSTANCE;
    public static final ASN1ObjectIdentifier businessCategory;

    /* renamed from: c, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f11391c;
    public static final ASN1ObjectIdentifier cn;

    /* renamed from: dc, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f11392dc;
    public static final ASN1ObjectIdentifier description;
    public static final ASN1ObjectIdentifier destinationIndicator;
    public static final ASN1ObjectIdentifier distinguishedName;
    public static final ASN1ObjectIdentifier dnQualifier;
    public static final ASN1ObjectIdentifier enhancedSearchGuide;
    public static final ASN1ObjectIdentifier facsimileTelephoneNumber;
    public static final ASN1ObjectIdentifier generationQualifier;
    public static final ASN1ObjectIdentifier givenName;
    public static final ASN1ObjectIdentifier houseIdentifier;
    public static final ASN1ObjectIdentifier initials;
    public static final ASN1ObjectIdentifier internationalISDNNumber;

    /* renamed from: l, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f11393l;
    public static final ASN1ObjectIdentifier member;
    public static final ASN1ObjectIdentifier name;

    /* renamed from: o, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f11394o;
    public static final ASN1ObjectIdentifier ou;
    public static final ASN1ObjectIdentifier owner;
    public static final ASN1ObjectIdentifier physicalDeliveryOfficeName;
    public static final ASN1ObjectIdentifier postOfficeBox;
    public static final ASN1ObjectIdentifier postalAddress;
    public static final ASN1ObjectIdentifier postalCode;
    public static final ASN1ObjectIdentifier preferredDeliveryMethod;
    public static final ASN1ObjectIdentifier registeredAddress;
    public static final ASN1ObjectIdentifier roleOccupant;
    public static final ASN1ObjectIdentifier searchGuide;
    public static final ASN1ObjectIdentifier seeAlso;
    public static final ASN1ObjectIdentifier serialNumber;
    public static final ASN1ObjectIdentifier sn;
    public static final ASN1ObjectIdentifier st;
    public static final ASN1ObjectIdentifier street;
    public static final ASN1ObjectIdentifier telephoneNumber;
    public static final ASN1ObjectIdentifier teletexTerminalIdentifier;
    public static final ASN1ObjectIdentifier telexNumber;
    public static final ASN1ObjectIdentifier title;
    public static final ASN1ObjectIdentifier uid;
    public static final ASN1ObjectIdentifier uniqueMember;
    public static final ASN1ObjectIdentifier userPassword;
    public static final ASN1ObjectIdentifier x121Address;
    public static final ASN1ObjectIdentifier x500UniqueIdentifier;
    protected final Hashtable defaultSymbols = AbstractX500NameStyle.copyHashTable(DefaultSymbols);
    protected final Hashtable defaultLookUp = AbstractX500NameStyle.copyHashTable(DefaultLookUp);

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ = c.j("2.5.4.15");
        businessCategory = aSN1ObjectIdentifierJ;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ2 = c.j("2.5.4.6");
        f11391c = aSN1ObjectIdentifierJ2;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ3 = c.j("2.5.4.3");
        cn = aSN1ObjectIdentifierJ3;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ4 = c.j("0.9.2342.19200300.100.1.25");
        f11392dc = aSN1ObjectIdentifierJ4;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ5 = c.j("2.5.4.13");
        description = aSN1ObjectIdentifierJ5;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ6 = c.j("2.5.4.27");
        destinationIndicator = aSN1ObjectIdentifierJ6;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ7 = c.j("2.5.4.49");
        distinguishedName = aSN1ObjectIdentifierJ7;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ8 = c.j("2.5.4.46");
        dnQualifier = aSN1ObjectIdentifierJ8;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ9 = c.j("2.5.4.47");
        enhancedSearchGuide = aSN1ObjectIdentifierJ9;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ10 = c.j("2.5.4.23");
        facsimileTelephoneNumber = aSN1ObjectIdentifierJ10;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ11 = c.j("2.5.4.44");
        generationQualifier = aSN1ObjectIdentifierJ11;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ12 = c.j("2.5.4.42");
        givenName = aSN1ObjectIdentifierJ12;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ13 = c.j("2.5.4.51");
        houseIdentifier = aSN1ObjectIdentifierJ13;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ14 = c.j("2.5.4.43");
        initials = aSN1ObjectIdentifierJ14;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ15 = c.j("2.5.4.25");
        internationalISDNNumber = aSN1ObjectIdentifierJ15;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ16 = c.j("2.5.4.7");
        f11393l = aSN1ObjectIdentifierJ16;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ17 = c.j("2.5.4.31");
        member = aSN1ObjectIdentifierJ17;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ18 = c.j("2.5.4.41");
        name = aSN1ObjectIdentifierJ18;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ19 = c.j("2.5.4.10");
        f11394o = aSN1ObjectIdentifierJ19;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ20 = c.j("2.5.4.11");
        ou = aSN1ObjectIdentifierJ20;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ21 = c.j("2.5.4.32");
        owner = aSN1ObjectIdentifierJ21;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ22 = c.j("2.5.4.19");
        physicalDeliveryOfficeName = aSN1ObjectIdentifierJ22;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ23 = c.j("2.5.4.16");
        postalAddress = aSN1ObjectIdentifierJ23;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ24 = c.j("2.5.4.17");
        postalCode = aSN1ObjectIdentifierJ24;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ25 = c.j("2.5.4.18");
        postOfficeBox = aSN1ObjectIdentifierJ25;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ26 = c.j("2.5.4.28");
        preferredDeliveryMethod = aSN1ObjectIdentifierJ26;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ27 = c.j("2.5.4.26");
        registeredAddress = aSN1ObjectIdentifierJ27;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ28 = c.j("2.5.4.33");
        roleOccupant = aSN1ObjectIdentifierJ28;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ29 = c.j("2.5.4.14");
        searchGuide = aSN1ObjectIdentifierJ29;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ30 = c.j("2.5.4.34");
        seeAlso = aSN1ObjectIdentifierJ30;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ31 = c.j("2.5.4.5");
        serialNumber = aSN1ObjectIdentifierJ31;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ32 = c.j("2.5.4.4");
        sn = aSN1ObjectIdentifierJ32;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ33 = c.j("2.5.4.8");
        st = aSN1ObjectIdentifierJ33;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ34 = c.j("2.5.4.9");
        street = aSN1ObjectIdentifierJ34;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ35 = c.j("2.5.4.20");
        telephoneNumber = aSN1ObjectIdentifierJ35;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ36 = c.j("2.5.4.22");
        teletexTerminalIdentifier = aSN1ObjectIdentifierJ36;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ37 = c.j("2.5.4.21");
        telexNumber = aSN1ObjectIdentifierJ37;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ38 = c.j("2.5.4.12");
        title = aSN1ObjectIdentifierJ38;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ39 = c.j("0.9.2342.19200300.100.1.1");
        uid = aSN1ObjectIdentifierJ39;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ40 = c.j("2.5.4.50");
        uniqueMember = aSN1ObjectIdentifierJ40;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ41 = c.j("2.5.4.35");
        userPassword = aSN1ObjectIdentifierJ41;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ42 = c.j("2.5.4.24");
        x121Address = aSN1ObjectIdentifierJ42;
        ASN1ObjectIdentifier aSN1ObjectIdentifierJ43 = c.j("2.5.4.45");
        x500UniqueIdentifier = aSN1ObjectIdentifierJ43;
        Hashtable hashtable = new Hashtable();
        DefaultSymbols = hashtable;
        Hashtable hashtable2 = new Hashtable();
        DefaultLookUp = hashtable2;
        hashtable.put(aSN1ObjectIdentifierJ, "businessCategory");
        hashtable.put(aSN1ObjectIdentifierJ2, "c");
        hashtable.put(aSN1ObjectIdentifierJ3, "cn");
        hashtable.put(aSN1ObjectIdentifierJ4, "dc");
        hashtable.put(aSN1ObjectIdentifierJ5, "description");
        hashtable.put(aSN1ObjectIdentifierJ6, "destinationIndicator");
        hashtable.put(aSN1ObjectIdentifierJ7, "distinguishedName");
        hashtable.put(aSN1ObjectIdentifierJ8, "dnQualifier");
        hashtable.put(aSN1ObjectIdentifierJ9, "enhancedSearchGuide");
        hashtable.put(aSN1ObjectIdentifierJ10, "facsimileTelephoneNumber");
        hashtable.put(aSN1ObjectIdentifierJ11, "generationQualifier");
        hashtable.put(aSN1ObjectIdentifierJ12, "givenName");
        hashtable.put(aSN1ObjectIdentifierJ13, "houseIdentifier");
        hashtable.put(aSN1ObjectIdentifierJ14, "initials");
        hashtable.put(aSN1ObjectIdentifierJ15, "internationalISDNNumber");
        hashtable.put(aSN1ObjectIdentifierJ16, "l");
        hashtable.put(aSN1ObjectIdentifierJ17, "member");
        hashtable.put(aSN1ObjectIdentifierJ18, "name");
        hashtable.put(aSN1ObjectIdentifierJ19, "o");
        hashtable.put(aSN1ObjectIdentifierJ20, "ou");
        hashtable.put(aSN1ObjectIdentifierJ21, "owner");
        hashtable.put(aSN1ObjectIdentifierJ22, "physicalDeliveryOfficeName");
        hashtable.put(aSN1ObjectIdentifierJ23, "postalAddress");
        hashtable.put(aSN1ObjectIdentifierJ24, "postalCode");
        hashtable.put(aSN1ObjectIdentifierJ25, "postOfficeBox");
        hashtable.put(aSN1ObjectIdentifierJ26, "preferredDeliveryMethod");
        hashtable.put(aSN1ObjectIdentifierJ27, "registeredAddress");
        hashtable.put(aSN1ObjectIdentifierJ28, "roleOccupant");
        hashtable.put(aSN1ObjectIdentifierJ29, "searchGuide");
        hashtable.put(aSN1ObjectIdentifierJ30, "seeAlso");
        hashtable.put(aSN1ObjectIdentifierJ31, "serialNumber");
        hashtable.put(aSN1ObjectIdentifierJ32, "sn");
        hashtable.put(aSN1ObjectIdentifierJ33, "st");
        hashtable.put(aSN1ObjectIdentifierJ34, "street");
        hashtable.put(aSN1ObjectIdentifierJ35, "telephoneNumber");
        hashtable.put(aSN1ObjectIdentifierJ36, "teletexTerminalIdentifier");
        hashtable.put(aSN1ObjectIdentifierJ37, "telexNumber");
        hashtable.put(aSN1ObjectIdentifierJ38, MessageBundle.TITLE_ENTRY);
        hashtable.put(aSN1ObjectIdentifierJ39, "uid");
        hashtable.put(aSN1ObjectIdentifierJ40, "uniqueMember");
        hashtable.put(aSN1ObjectIdentifierJ41, "userPassword");
        hashtable.put(aSN1ObjectIdentifierJ42, "x121Address");
        hashtable.put(aSN1ObjectIdentifierJ43, "x500UniqueIdentifier");
        hashtable2.put("businesscategory", aSN1ObjectIdentifierJ);
        hashtable2.put("c", aSN1ObjectIdentifierJ2);
        hashtable2.put("cn", aSN1ObjectIdentifierJ3);
        hashtable2.put("dc", aSN1ObjectIdentifierJ4);
        hashtable2.put("description", aSN1ObjectIdentifierJ5);
        hashtable2.put("destinationindicator", aSN1ObjectIdentifierJ6);
        hashtable2.put("distinguishedname", aSN1ObjectIdentifierJ7);
        hashtable2.put("dnqualifier", aSN1ObjectIdentifierJ8);
        hashtable2.put("enhancedsearchguide", aSN1ObjectIdentifierJ9);
        hashtable2.put("facsimiletelephonenumber", aSN1ObjectIdentifierJ10);
        hashtable2.put("generationqualifier", aSN1ObjectIdentifierJ11);
        hashtable2.put("givenname", aSN1ObjectIdentifierJ12);
        hashtable2.put("houseidentifier", aSN1ObjectIdentifierJ13);
        hashtable2.put("initials", aSN1ObjectIdentifierJ14);
        hashtable2.put("internationalisdnnumber", aSN1ObjectIdentifierJ15);
        hashtable2.put("l", aSN1ObjectIdentifierJ16);
        hashtable2.put("member", aSN1ObjectIdentifierJ17);
        hashtable2.put("name", aSN1ObjectIdentifierJ18);
        hashtable2.put("o", aSN1ObjectIdentifierJ19);
        hashtable2.put("ou", aSN1ObjectIdentifierJ20);
        hashtable2.put("owner", aSN1ObjectIdentifierJ21);
        hashtable2.put("physicaldeliveryofficename", aSN1ObjectIdentifierJ22);
        hashtable2.put("postaladdress", aSN1ObjectIdentifierJ23);
        hashtable2.put("postalcode", aSN1ObjectIdentifierJ24);
        hashtable2.put("postofficebox", aSN1ObjectIdentifierJ25);
        hashtable2.put("preferreddeliverymethod", aSN1ObjectIdentifierJ26);
        hashtable2.put("registeredaddress", aSN1ObjectIdentifierJ27);
        hashtable2.put("roleoccupant", aSN1ObjectIdentifierJ28);
        hashtable2.put("searchguide", aSN1ObjectIdentifierJ29);
        hashtable2.put("seealso", aSN1ObjectIdentifierJ30);
        hashtable2.put("serialnumber", aSN1ObjectIdentifierJ31);
        hashtable2.put("sn", aSN1ObjectIdentifierJ32);
        hashtable2.put("st", aSN1ObjectIdentifierJ33);
        hashtable2.put("street", aSN1ObjectIdentifierJ34);
        hashtable2.put("telephonenumber", aSN1ObjectIdentifierJ35);
        hashtable2.put("teletexterminalidentifier", aSN1ObjectIdentifierJ36);
        hashtable2.put("telexnumber", aSN1ObjectIdentifierJ37);
        hashtable2.put(MessageBundle.TITLE_ENTRY, aSN1ObjectIdentifierJ38);
        hashtable2.put("uid", aSN1ObjectIdentifierJ39);
        hashtable2.put("uniquemember", aSN1ObjectIdentifierJ40);
        hashtable2.put("userpassword", aSN1ObjectIdentifierJ41);
        hashtable2.put("x121address", aSN1ObjectIdentifierJ42);
        hashtable2.put("x500uniqueidentifier", aSN1ObjectIdentifierJ43);
        INSTANCE = new RFC4519Style();
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public ASN1ObjectIdentifier attrNameToOID(String str) {
        return IETFUtils.decodeAttrName(str, this.defaultLookUp);
    }

    @Override // org.bouncycastle.asn1.x500.style.AbstractX500NameStyle
    public ASN1Encodable encodeStringValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        return aSN1ObjectIdentifier.equals((ASN1Primitive) f11392dc) ? new DERIA5String(str) : (aSN1ObjectIdentifier.equals((ASN1Primitive) f11391c) || aSN1ObjectIdentifier.equals((ASN1Primitive) serialNumber) || aSN1ObjectIdentifier.equals((ASN1Primitive) dnQualifier) || aSN1ObjectIdentifier.equals((ASN1Primitive) telephoneNumber)) ? new DERPrintableString(str) : super.encodeStringValue(aSN1ObjectIdentifier, str);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public RDN[] fromString(String str) {
        RDN[] rdnArrRDNsFromString = IETFUtils.rDNsFromString(str, this);
        RDN[] rdnArr = new RDN[rdnArrRDNsFromString.length];
        for (int r22 = 0; r22 != rdnArrRDNsFromString.length; r22++) {
            rdnArr[(r0 - r22) - 1] = rdnArrRDNsFromString[r22];
        }
        return rdnArr;
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String[] oidToAttrNames(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return IETFUtils.findAttrNamesForOID(aSN1ObjectIdentifier, this.defaultLookUp);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String oidToDisplayName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (String) this.defaultSymbols.get(aSN1ObjectIdentifier);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String toString(X500Name x500Name) {
        StringBuffer stringBuffer = new StringBuffer();
        RDN[] rDNs = x500Name.getRDNs();
        boolean z10 = true;
        for (int length = rDNs.length - 1; length >= 0; length--) {
            if (z10) {
                z10 = false;
            } else {
                stringBuffer.append(',');
            }
            IETFUtils.appendRDN(stringBuffer, rDNs[length], this.defaultSymbols);
        }
        return stringBuffer.toString();
    }
}
