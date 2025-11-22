.class public final Lw4/q;
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
    .locals 41

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
    const/16 v3, 0x66

    .line 13
    .line 14
    const-wide/32 v4, 0x36ee80

    .line 15
    .line 16
    .line 17
    const-wide/32 v6, 0x927c0

    .line 18
    .line 19
    .line 20
    const-wide/16 v8, 0x0

    .line 21
    .line 22
    const-wide v10, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const v12, 0x7fffffff

    .line 28
    .line 29
    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v14, 0x0

    .line 32
    const-wide/16 v15, -0x1

    .line 33
    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    move-object/from16 v39, v2

    .line 37
    .line 38
    move-wide/from16 v20, v4

    .line 39
    .line 40
    move-wide/from16 v22, v6

    .line 41
    .line 42
    move-wide/from16 v24, v8

    .line 43
    .line 44
    move-wide/from16 v26, v10

    .line 45
    .line 46
    move-wide/from16 v28, v26

    .line 47
    .line 48
    move-wide/from16 v33, v15

    .line 49
    .line 50
    move-object/from16 v37, v17

    .line 51
    .line 52
    move-object/from16 v40, v37

    .line 53
    .line 54
    const/16 v19, 0x66

    .line 55
    .line 56
    const v30, 0x7fffffff

    .line 57
    .line 58
    .line 59
    const/16 v31, 0x0

    .line 60
    .line 61
    const/16 v32, 0x0

    .line 62
    .line 63
    const/16 v35, 0x0

    .line 64
    .line 65
    const/16 v36, 0x0

    .line 66
    .line 67
    const/16 v38, 0x0

    .line 68
    .line 69
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge v2, v1, :cond_0

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    int-to-char v3, v2

    .line 80
    packed-switch v3, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    :pswitch_0
    invoke-static {v0, v2}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_1
    sget-object v3, Lm4/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    .line 89
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lm4/p;

    .line 94
    .line 95
    move-object/from16 v40, v2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_2
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 99
    .line 100
    invoke-static {v0, v2, v3}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroid/os/WorkSource;

    .line 105
    .line 106
    move-object/from16 v39, v2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_3
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    move/from16 v38, v2

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_4
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object/from16 v37, v2

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :pswitch_5
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    move/from16 v36, v2

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_6
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    move/from16 v35, v2

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_7
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    move-wide/from16 v33, v2

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_8
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    move-wide/from16 v28, v2

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :pswitch_9
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    move/from16 v32, v2

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :pswitch_a
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    move-wide/from16 v24, v2

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :pswitch_b
    invoke-static {v0, v2}, Ls3/b;->n(Landroid/os/Parcel;I)F

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    move/from16 v31, v2

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :pswitch_c
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    move/from16 v30, v2

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :pswitch_d
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v2

    .line 183
    move-wide/from16 v26, v2

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :pswitch_e
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    move-wide/from16 v22, v2

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :pswitch_f
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    move-wide/from16 v20, v2

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_10
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    move/from16 v19, v2

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_0
    invoke-static {v0, v1}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    .line 213
    .line 214
    move-object/from16 v18, v0

    .line 215
    .line 216
    invoke-direct/range {v18 .. v40}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Lm4/p;)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
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
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/location/LocationRequest;

    return-object p1
.end method
