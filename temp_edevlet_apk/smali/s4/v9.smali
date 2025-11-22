.class public final Ls4/v9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ls4/b9;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17

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
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v6, v2

    .line 11
    move-object v7, v6

    .line 12
    move-object v8, v7

    .line 13
    move-object v9, v8

    .line 14
    move-object v10, v9

    .line 15
    move-object v12, v10

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v14, 0x0

    .line 19
    const/4 v15, 0x0

    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v2, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-char v3, v2

    .line 33
    packed-switch v3, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    move/from16 v16, v2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    move v15, v2

    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    move v14, v2

    .line 58
    goto :goto_0

    .line 59
    :pswitch_3
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    move v13, v2

    .line 64
    goto :goto_0

    .line 65
    :pswitch_4
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object v12, v2

    .line 70
    goto :goto_0

    .line 71
    :pswitch_5
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    move v11, v2

    .line 76
    goto :goto_0

    .line 77
    :pswitch_6
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v10, v2

    .line 82
    goto :goto_0

    .line 83
    :pswitch_7
    sget-object v3, Ls4/j3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    .line 85
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ls4/j3;

    .line 90
    .line 91
    move-object v9, v2

    .line 92
    goto :goto_0

    .line 93
    :pswitch_8
    sget-object v3, Ls4/j3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    .line 95
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ls4/j3;

    .line 100
    .line 101
    move-object v8, v2

    .line 102
    goto :goto_0

    .line 103
    :pswitch_9
    sget-object v3, Ls4/j3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 104
    .line 105
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ls4/j3;

    .line 110
    .line 111
    move-object v7, v2

    .line 112
    goto :goto_0

    .line 113
    :pswitch_a
    sget-object v3, Ls4/aa;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    .line 115
    invoke-static {v0, v2, v3}, Ls3/b;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, [Ls4/aa;

    .line 120
    .line 121
    move-object v6, v2

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v0, v1}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Ls4/b9;

    .line 127
    .line 128
    move-object v5, v0

    .line 129
    invoke-direct/range {v5 .. v16}, Ls4/b9;-><init>([Ls4/aa;Ls4/j3;Ls4/j3;Ls4/j3;Ljava/lang/String;FLjava/lang/String;IZII)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
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

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Ls4/b9;

    return-object p1
.end method
