.class public final Lk5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/vision/face/internal/client/FaceParcel;",
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
    .locals 23

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
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/high16 v6, -0x40800000    # -1.0f

    .line 14
    .line 15
    move-object/from16 v17, v5

    .line 16
    .line 17
    move-object/from16 v21, v17

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x0

    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x0

    .line 25
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    .line 26
    .line 27
    .line 28
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 29
    .line 30
    .line 31
    const v16, 0x7f7fffff    # Float.MAX_VALUE

    .line 32
    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    const/16 v19, 0x0

    .line 37
    .line 38
    const/16 v20, 0x0

    .line 39
    .line 40
    const/high16 v22, -0x40800000    # -1.0f

    .line 41
    .line 42
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ge v2, v1, :cond_0

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-char v3, v2

    .line 53
    packed-switch v3, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_0
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 61
    .line 62
    .line 63
    move-result v22

    .line 64
    goto :goto_0

    .line 65
    :pswitch_1
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 66
    .line 67
    .line 68
    move-result v16

    .line 69
    goto :goto_0

    .line 70
    :pswitch_2
    sget-object v3, Lk5/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    .line 72
    invoke-static {v0, v2, v3}, Ls3/b;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object/from16 v21, v2

    .line 77
    .line 78
    check-cast v21, [Lk5/a;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_3
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 82
    .line 83
    .line 84
    move-result v20

    .line 85
    goto :goto_0

    .line 86
    :pswitch_4
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 87
    .line 88
    .line 89
    move-result v19

    .line 90
    goto :goto_0

    .line 91
    :pswitch_5
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 92
    .line 93
    .line 94
    move-result v18

    .line 95
    goto :goto_0

    .line 96
    :pswitch_6
    sget-object v3, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    .line 98
    invoke-static {v0, v2, v3}, Ls3/b;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object/from16 v17, v2

    .line 103
    .line 104
    check-cast v17, [Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_7
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    goto :goto_0

    .line 112
    :pswitch_8
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    goto :goto_0

    .line 117
    :pswitch_9
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    goto :goto_0

    .line 122
    :pswitch_a
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    goto :goto_0

    .line 127
    :pswitch_b
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    goto :goto_0

    .line 132
    :pswitch_c
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    goto :goto_0

    .line 137
    :pswitch_d
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    goto :goto_0

    .line 142
    :pswitch_e
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    goto :goto_0

    .line 147
    :cond_0
    invoke-static {v0, v1}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    .line 151
    .line 152
    move-object v7, v0

    .line 153
    invoke-direct/range {v7 .. v22}, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;-><init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Lk5/a;F)V

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    return-object p1
.end method
