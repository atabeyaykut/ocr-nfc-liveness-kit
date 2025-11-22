.class public final Lw4/g;
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
    .locals 20

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
    new-instance v2, Landroid/os/WorkSource;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    .line 10
    .line 11
    .line 12
    const-wide v3, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/16 v6, 0x66

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    move-object/from16 v18, v2

    .line 22
    .line 23
    move-wide v9, v3

    .line 24
    move-wide v13, v9

    .line 25
    move-object/from16 v17, v7

    .line 26
    .line 27
    move-object/from16 v19, v17

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    const/16 v12, 0x66

    .line 31
    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ge v2, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-char v3, v2

    .line 46
    packed-switch v3, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_0
    sget-object v3, Lm4/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    .line 55
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lm4/p;

    .line 60
    .line 61
    move-object/from16 v19, v2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_1
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object/from16 v17, v2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_2
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_3
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    .line 80
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/os/WorkSource;

    .line 85
    .line 86
    move-object/from16 v18, v2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_4
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    move v15, v2

    .line 94
    goto :goto_0

    .line 95
    :pswitch_5
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    move-wide v13, v2

    .line 100
    goto :goto_0

    .line 101
    :pswitch_6
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    move v12, v2

    .line 106
    goto :goto_0

    .line 107
    :pswitch_7
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    move v11, v2

    .line 112
    goto :goto_0

    .line 113
    :pswitch_8
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    move-wide v9, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v0, v1}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lw4/a;

    .line 123
    .line 124
    move-object v8, v0

    .line 125
    invoke-direct/range {v8 .. v19}, Lw4/a;-><init>(JIIJZILjava/lang/String;Landroid/os/WorkSource;Lm4/p;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
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

    new-array p1, p1, [Lw4/a;

    return-object p1
.end method
