.class public final Lc5/z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lc5/y7;",
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
    .locals 39

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
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const-wide/32 v6, -0x80000000

    .line 13
    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    move-object/from16 v38, v2

    .line 18
    .line 19
    move-object v11, v3

    .line 20
    move-object v12, v11

    .line 21
    move-object v13, v12

    .line 22
    move-object v14, v13

    .line 23
    move-object/from16 v19, v14

    .line 24
    .line 25
    move-object/from16 v24, v19

    .line 26
    .line 27
    move-object/from16 v32, v24

    .line 28
    .line 29
    move-object/from16 v33, v32

    .line 30
    .line 31
    move-object/from16 v36, v33

    .line 32
    .line 33
    move-object/from16 v37, v36

    .line 34
    .line 35
    move-wide v15, v4

    .line 36
    move-wide/from16 v17, v15

    .line 37
    .line 38
    move-wide/from16 v25, v17

    .line 39
    .line 40
    move-wide/from16 v27, v25

    .line 41
    .line 42
    move-wide/from16 v34, v27

    .line 43
    .line 44
    move-wide/from16 v22, v6

    .line 45
    .line 46
    const/16 v20, 0x1

    .line 47
    .line 48
    const/16 v21, 0x0

    .line 49
    .line 50
    const/16 v29, 0x0

    .line 51
    .line 52
    const/16 v30, 0x1

    .line 53
    .line 54
    const/16 v31, 0x0

    .line 55
    .line 56
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ge v2, v1, :cond_3

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-char v4, v2

    .line 67
    packed-switch v4, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    :pswitch_0
    invoke-static {v0, v2}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_1
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v38

    .line 78
    goto :goto_0

    .line 79
    :pswitch_2
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v37

    .line 83
    goto :goto_0

    .line 84
    :pswitch_3
    invoke-static {v0, v2}, Ls3/b;->s(Landroid/os/Parcel;I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v2, :cond_0

    .line 93
    .line 94
    move-object/from16 v36, v3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    add-int/2addr v4, v2

    .line 102
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v36, v5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_4
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v34

    .line 112
    goto :goto_0

    .line 113
    :pswitch_5
    invoke-static {v0, v2}, Ls3/b;->s(Landroid/os/Parcel;I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_1

    .line 118
    .line 119
    move-object/from16 v33, v3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const/4 v4, 0x4

    .line 123
    invoke-static {v0, v2, v4}, Ls3/b;->v(Landroid/os/Parcel;II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_2

    .line 131
    .line 132
    const/4 v2, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const/4 v2, 0x0

    .line 135
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v33

    .line 139
    goto :goto_0

    .line 140
    :pswitch_6
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v32

    .line 144
    goto :goto_0

    .line 145
    :pswitch_7
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 146
    .line 147
    .line 148
    move-result v31

    .line 149
    goto :goto_0

    .line 150
    :pswitch_8
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 151
    .line 152
    .line 153
    move-result v30

    .line 154
    goto :goto_0

    .line 155
    :pswitch_9
    invoke-static {v0, v2}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 156
    .line 157
    .line 158
    move-result v29

    .line 159
    goto :goto_0

    .line 160
    :pswitch_a
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 161
    .line 162
    .line 163
    move-result-wide v27

    .line 164
    goto :goto_0

    .line 165
    :pswitch_b
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v25

    .line 169
    goto :goto_0

    .line 170
    :pswitch_c
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v24

    .line 174
    goto :goto_0

    .line 175
    :pswitch_d
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v22

    .line 179
    goto :goto_0

    .line 180
    :pswitch_e
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 181
    .line 182
    .line 183
    move-result v21

    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :pswitch_f
    invoke-static {v0, v2}, Ls3/b;->k(Landroid/os/Parcel;I)Z

    .line 187
    .line 188
    .line 189
    move-result v20

    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_10
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v19

    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :pswitch_11
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 199
    .line 200
    .line 201
    move-result-wide v17

    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_12
    invoke-static {v0, v2}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 205
    .line 206
    .line 207
    move-result-wide v15

    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_13
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :pswitch_14
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_15
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_16
    invoke-static {v0, v2}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_3
    invoke-static {v0, v1}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lc5/y7;

    .line 238
    .line 239
    move-object v10, v0

    .line 240
    invoke-direct/range {v10 .. v38}, Lc5/y7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lc5/y7;

    return-object p1
.end method
