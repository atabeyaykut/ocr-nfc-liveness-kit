package com.google.android.libraries.barhopper;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.apps.common.proguard.UsedByNative;

@UsedByNative("barhopper-v2-jni.cc")
/* loaded from: classes.dex */
public class Barcode implements Parcelable {

    @RecentlyNonNull
    public static final Parcelable.Creator<Barcode> CREATOR = new a();

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public BoardingPass boardingPass;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public CalendarEvent calendarEvent;

    @UsedByNative("barhopper-v2-jni.cc")
    public double confidenceScore;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public ContactInfo contactInfo;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public Point[] cornerPoints;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public String displayValue;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public DriverLicense driverLicense;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public Email email;

    @UsedByNative("barhopper-v2-jni.cc")
    public int format;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public GeoPoint geoPoint;

    @UsedByNative("barhopper-v2-jni.cc")
    public boolean isRecognized;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public Phone phone;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public byte[] rawBytes;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public String rawValue;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public Sms sms;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public UrlBookmark url;

    @UsedByNative("barhopper-v2-jni.cc")
    public int valueFormat;

    @RecentlyNonNull
    @UsedByNative("barhopper-v2-jni.cc")
    public WiFi wifi;

    @UsedByNative("barhopper-v2-jni.cc")
    public static class Address implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<Address> CREATOR = new com.google.android.libraries.barhopper.a();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String[] addressLines;

        @UsedByNative("barhopper-v2-jni.cc")
        public int type;

        @UsedByNative("barhopper-v2-jni.cc")
        public Address() {
        }

        public Address(Parcel parcel) {
            this.type = parcel.readInt();
            this.addressLines = parcel.createStringArray();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeInt(this.type);
            parcel.writeStringArray(this.addressLines);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class BoardingPass implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<BoardingPass> CREATOR = new b();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public FlightSegment[] flightSegment;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String passengerName;

        @UsedByNative("barhopper-v2-jni.cc")
        public BoardingPass() {
        }

        public BoardingPass(Parcel parcel) {
            this.passengerName = parcel.readString();
            this.flightSegment = (FlightSegment[]) parcel.createTypedArray(FlightSegment.CREATOR);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r32) {
            parcel.writeString(this.passengerName);
            parcel.writeTypedArray(this.flightSegment, 0);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class CalendarDateTime implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<CalendarDateTime> CREATOR = new c();

        @UsedByNative("barhopper-v2-jni.cc")
        public int day;

        @UsedByNative("barhopper-v2-jni.cc")
        public int hours;

        @UsedByNative("barhopper-v2-jni.cc")
        public boolean isUtc;

        @UsedByNative("barhopper-v2-jni.cc")
        public int minutes;

        @UsedByNative("barhopper-v2-jni.cc")
        public int month;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String rawValue;

        @UsedByNative("barhopper-v2-jni.cc")
        public int seconds;

        @UsedByNative("barhopper-v2-jni.cc")
        public int year;

        @UsedByNative("barhopper-v2-jni.cc")
        public CalendarDateTime() {
        }

        public CalendarDateTime(Parcel parcel) {
            this.year = parcel.readInt();
            this.month = parcel.readInt();
            this.day = parcel.readInt();
            this.hours = parcel.readInt();
            this.minutes = parcel.readInt();
            this.seconds = parcel.readInt();
            this.isUtc = parcel.readByte() != 0;
            this.rawValue = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeInt(this.year);
            parcel.writeInt(this.month);
            parcel.writeInt(this.day);
            parcel.writeInt(this.hours);
            parcel.writeInt(this.minutes);
            parcel.writeInt(this.seconds);
            parcel.writeByte(this.isUtc ? (byte) 1 : (byte) 0);
            parcel.writeString(this.rawValue);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class CalendarEvent implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<CalendarEvent> CREATOR = new d();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String description;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public CalendarDateTime end;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String location;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String organizer;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public CalendarDateTime start;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String status;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String summary;

        @UsedByNative("barhopper-v2-jni.cc")
        public CalendarEvent() {
        }

        public CalendarEvent(Parcel parcel) {
            this.summary = parcel.readString();
            this.description = parcel.readString();
            this.location = parcel.readString();
            this.organizer = parcel.readString();
            this.status = parcel.readString();
            this.start = (CalendarDateTime) parcel.readParcelable(CalendarDateTime.class.getClassLoader());
            this.end = (CalendarDateTime) parcel.readParcelable(CalendarDateTime.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r32) {
            parcel.writeString(this.summary);
            parcel.writeString(this.description);
            parcel.writeString(this.location);
            parcel.writeString(this.organizer);
            parcel.writeString(this.status);
            parcel.writeParcelable(this.start, 0);
            parcel.writeParcelable(this.end, 0);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class ContactInfo implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<ContactInfo> CREATOR = new e();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public Address[] addresses;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public Email[] emails;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public PersonName name;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String note;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String organization;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public Phone[] phones;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String title;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String[] urls;

        @UsedByNative("barhopper-v2-jni.cc")
        public ContactInfo() {
        }

        public ContactInfo(Parcel parcel) {
            this.name = (PersonName) parcel.readParcelable(PersonName.class.getClassLoader());
            this.organization = parcel.readString();
            this.title = parcel.readString();
            this.phones = (Phone[]) parcel.createTypedArray(Phone.CREATOR);
            this.emails = (Email[]) parcel.createTypedArray(Email.CREATOR);
            this.urls = parcel.createStringArray();
            this.addresses = (Address[]) parcel.createTypedArray(Address.CREATOR);
            this.note = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r32) {
            parcel.writeParcelable(this.name, 0);
            parcel.writeString(this.organization);
            parcel.writeString(this.title);
            parcel.writeTypedArray(this.phones, 0);
            parcel.writeTypedArray(this.emails, 0);
            parcel.writeStringArray(this.urls);
            parcel.writeTypedArray(this.addresses, 0);
            parcel.writeString(this.note);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class DriverLicense implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<DriverLicense> CREATOR = new f();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String addressCity;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String addressState;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String addressStreet;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String addressZip;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String birthDate;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String documentType;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String expiryDate;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String firstName;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String gender;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String issueDate;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String issuingCountry;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String lastName;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String licenseNumber;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String middleName;

        @UsedByNative("barhopper-v2-jni.cc")
        public DriverLicense() {
        }

        public DriverLicense(Parcel parcel) {
            this.documentType = parcel.readString();
            this.firstName = parcel.readString();
            this.middleName = parcel.readString();
            this.lastName = parcel.readString();
            this.gender = parcel.readString();
            this.addressStreet = parcel.readString();
            this.addressCity = parcel.readString();
            this.addressState = parcel.readString();
            this.addressZip = parcel.readString();
            this.licenseNumber = parcel.readString();
            this.issueDate = parcel.readString();
            this.expiryDate = parcel.readString();
            this.birthDate = parcel.readString();
            this.issuingCountry = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeString(this.documentType);
            parcel.writeString(this.firstName);
            parcel.writeString(this.middleName);
            parcel.writeString(this.lastName);
            parcel.writeString(this.gender);
            parcel.writeString(this.addressStreet);
            parcel.writeString(this.addressCity);
            parcel.writeString(this.addressState);
            parcel.writeString(this.addressZip);
            parcel.writeString(this.licenseNumber);
            parcel.writeString(this.issueDate);
            parcel.writeString(this.expiryDate);
            parcel.writeString(this.birthDate);
            parcel.writeString(this.issuingCountry);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class Email implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<Email> CREATOR = new g();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String address;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String body;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String subject;

        @UsedByNative("barhopper-v2-jni.cc")
        public int type;

        @UsedByNative("barhopper-v2-jni.cc")
        public Email() {
        }

        public Email(Parcel parcel) {
            this.type = parcel.readInt();
            this.address = parcel.readString();
            this.subject = parcel.readString();
            this.body = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeInt(this.type);
            parcel.writeString(this.address);
            parcel.writeString(this.subject);
            parcel.writeString(this.body);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class FlightSegment implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<FlightSegment> CREATOR = new h();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String carrier;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String compartmentCode;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String dateOfFlightJulian;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String destination;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String flightNumber;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String origin;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String pnrCode;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String seatNumber;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String selecteeIndicator;

        @UsedByNative("barhopper-v2-jni.cc")
        public FlightSegment() {
        }

        public FlightSegment(Parcel parcel) {
            this.pnrCode = parcel.readString();
            this.origin = parcel.readString();
            this.destination = parcel.readString();
            this.carrier = parcel.readString();
            this.flightNumber = parcel.readString();
            this.dateOfFlightJulian = parcel.readString();
            this.compartmentCode = parcel.readString();
            this.seatNumber = parcel.readString();
            this.selecteeIndicator = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeString(this.pnrCode);
            parcel.writeString(this.origin);
            parcel.writeString(this.destination);
            parcel.writeString(this.carrier);
            parcel.writeString(this.flightNumber);
            parcel.writeString(this.dateOfFlightJulian);
            parcel.writeString(this.compartmentCode);
            parcel.writeString(this.seatNumber);
            parcel.writeString(this.selecteeIndicator);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class GeoPoint implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<GeoPoint> CREATOR = new i();

        @UsedByNative("barhopper-v2-jni.cc")
        public double lat;

        @UsedByNative("barhopper-v2-jni.cc")
        public double lng;

        @UsedByNative("barhopper-v2-jni.cc")
        public GeoPoint() {
        }

        public GeoPoint(Parcel parcel) {
            this.lat = parcel.readDouble();
            this.lng = parcel.readDouble();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r42) {
            parcel.writeDouble(this.lat);
            parcel.writeDouble(this.lng);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class PersonName implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<PersonName> CREATOR = new j();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String first;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String formattedName;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String last;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String middle;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String prefix;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String pronunciation;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String suffix;

        @UsedByNative("barhopper-v2-jni.cc")
        public PersonName() {
        }

        public PersonName(Parcel parcel) {
            this.formattedName = parcel.readString();
            this.pronunciation = parcel.readString();
            this.prefix = parcel.readString();
            this.first = parcel.readString();
            this.middle = parcel.readString();
            this.last = parcel.readString();
            this.suffix = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeString(this.formattedName);
            parcel.writeString(this.pronunciation);
            parcel.writeString(this.prefix);
            parcel.writeString(this.first);
            parcel.writeString(this.middle);
            parcel.writeString(this.last);
            parcel.writeString(this.suffix);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class Phone implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<Phone> CREATOR = new k();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String number;

        @UsedByNative("barhopper-v2-jni.cc")
        public int type;

        @UsedByNative("barhopper-v2-jni.cc")
        public Phone() {
        }

        public Phone(Parcel parcel) {
            this.type = parcel.readInt();
            this.number = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeInt(this.type);
            parcel.writeString(this.number);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class Sms implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<Sms> CREATOR = new l();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String message;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String phoneNumber;

        @UsedByNative("barhopper-v2-jni.cc")
        public Sms() {
        }

        public Sms(Parcel parcel) {
            this.message = parcel.readString();
            this.phoneNumber = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeString(this.message);
            parcel.writeString(this.phoneNumber);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class UrlBookmark implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<UrlBookmark> CREATOR = new m();

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String title;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String url;

        @UsedByNative("barhopper-v2-jni.cc")
        public UrlBookmark() {
        }

        public UrlBookmark(Parcel parcel) {
            this.title = parcel.readString();
            this.url = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeString(this.title);
            parcel.writeString(this.url);
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public static class WiFi implements Parcelable {

        @RecentlyNonNull
        public static final Parcelable.Creator<WiFi> CREATOR = new n();

        @UsedByNative("barhopper-v2-jni.cc")
        public int encryptionType;

        @UsedByNative("barhopper-v2-jni.cc")
        public boolean isHidden;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String password;

        @RecentlyNonNull
        @UsedByNative("barhopper-v2-jni.cc")
        public String ssid;

        @UsedByNative("barhopper-v2-jni.cc")
        public WiFi() {
        }

        public WiFi(Parcel parcel) {
            this.ssid = parcel.readString();
            this.password = parcel.readString();
            this.encryptionType = parcel.readInt();
            this.isHidden = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r22) {
            parcel.writeString(this.ssid);
            parcel.writeString(this.password);
            parcel.writeInt(this.encryptionType);
            parcel.writeByte(this.isHidden ? (byte) 1 : (byte) 0);
        }
    }

    public class a implements Parcelable.Creator<Barcode> {
        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Barcode createFromParcel(Parcel parcel) {
            return new Barcode(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Barcode[] newArray(int r12) {
            return new Barcode[r12];
        }
    }

    @UsedByNative("barhopper-v2-jni.cc")
    public Barcode() {
    }

    public Barcode(Parcel parcel) {
        this.format = parcel.readInt();
        this.rawValue = parcel.readString();
        this.displayValue = parcel.readString();
        this.valueFormat = parcel.readInt();
        this.cornerPoints = (Point[]) parcel.createTypedArray(Point.CREATOR);
        this.email = (Email) parcel.readParcelable(Email.class.getClassLoader());
        this.phone = (Phone) parcel.readParcelable(Phone.class.getClassLoader());
        this.sms = (Sms) parcel.readParcelable(Sms.class.getClassLoader());
        this.wifi = (WiFi) parcel.readParcelable(WiFi.class.getClassLoader());
        this.url = (UrlBookmark) parcel.readParcelable(UrlBookmark.class.getClassLoader());
        this.geoPoint = (GeoPoint) parcel.readParcelable(GeoPoint.class.getClassLoader());
        this.calendarEvent = (CalendarEvent) parcel.readParcelable(CalendarEvent.class.getClassLoader());
        this.contactInfo = (ContactInfo) parcel.readParcelable(ContactInfo.class.getClassLoader());
        this.driverLicense = (DriverLicense) parcel.readParcelable(DriverLicense.class.getClassLoader());
        this.boardingPass = (BoardingPass) parcel.readParcelable(BoardingPass.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r32) {
        parcel.writeInt(this.format);
        parcel.writeString(this.rawValue);
        parcel.writeString(this.displayValue);
        parcel.writeInt(this.valueFormat);
        parcel.writeTypedArray(this.cornerPoints, 0);
        parcel.writeParcelable(this.email, 0);
        parcel.writeParcelable(this.phone, 0);
        parcel.writeParcelable(this.sms, 0);
        parcel.writeParcelable(this.wifi, 0);
        parcel.writeParcelable(this.url, 0);
        parcel.writeParcelable(this.geoPoint, 0);
        parcel.writeParcelable(this.calendarEvent, 0);
        parcel.writeParcelable(this.contactInfo, 0);
        parcel.writeParcelable(this.driverLicense, 0);
        parcel.writeParcelable(this.boardingPass, 0);
    }
}
