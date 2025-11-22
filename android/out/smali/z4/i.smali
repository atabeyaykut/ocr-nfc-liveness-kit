.class public final Lz4/i;
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
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ls3/b;->u(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v8, v2

    .line 13
    move-object/from16 v17, v8

    .line 14
    .line 15
    move-wide v9, v3

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x0

    .line 19
    const/4 v14, 0x0

    .line 20
    const/4 v15, 0x0

    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v2, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-char v3, v2

    .line 34
    packed-switch v3, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_0
    sget-object v3, Lz4/f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    .line 43
    invoke-static {v0, v2, v3}, Ls3/b;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v17

    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 49
    .line 50
    .line 51
    move-result v16

    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 54
    .line 55
    .line 56
    move-result v15

    .line 57
    goto :goto_0

    .line 58
    :pswitch_3
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    goto :goto_0

    .line 63
    :pswitch_4
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    goto :goto_0

    .line 68
    :pswitch_5
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    goto :goto_0

    .line 73
    :pswitch_6
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    goto :goto_0

    .line 78
    :pswitch_7
    invoke-static {v0, v2}, Ls3/b;->m(Landroid/os/Parcel;I)D

    .line 79
    .line 80
    .line 81
    move-result-wide v9

    .line 82
    goto :goto_0

    .line 83
    :pswitch_8
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    .line 85
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    move-object v8, v2

    .line 90
    check-cast v8, Lcom/google/android/gms/maps/model/LatLng;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    invoke-static {v0, v1}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lz4/c;

    .line 97
    .line 98
    move-object v7, v0

    .line 99
    invoke-direct/range {v7 .. v17}, Lz4/c;-><init>(Lcom/google/android/gms/maps/model/LatLng;DFIIFZZLjava/util/ArrayList;)V

    .line 100
    .line 101
    .line 102
    return-object v0

    .line 103
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    new-array p1, p1, [Lz4/c;

    return-object p1
.end method
