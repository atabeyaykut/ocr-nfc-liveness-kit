.class public final Lw4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Ls3/b;->u(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x3e8

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    move-wide v10, v1

    .line 12
    move-object v12, v3

    .line 13
    const/16 v7, 0x3e8

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x1

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v1, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-char v2, v1

    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    invoke-static {p1, v1}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v2, Lw4/e;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    .line 41
    invoke-static {p1, v1, v2}, Ls3/b;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v12, v1

    .line 46
    check-cast v12, [Lw4/e;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_2
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    goto :goto_0

    .line 54
    :pswitch_3
    invoke-static {p1, v1}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v10

    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    goto :goto_0

    .line 64
    :pswitch_5
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p1, v0}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/google/android/gms/location/LocationAvailability;

    .line 73
    .line 74
    move-object v6, p1

    .line 75
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/location/LocationAvailability;-><init>(IIIJ[Lw4/e;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/location/LocationAvailability;

    return-object p1
.end method
